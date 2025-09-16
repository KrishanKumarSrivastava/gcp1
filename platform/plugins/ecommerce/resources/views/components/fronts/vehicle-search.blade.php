<div class="vehicle-search-widget" data-bb-toggle="vehicle-search">
    <div class="row g-3">
        <div class="col-lg-3 col-md-6">
            <select 
                name="make_id" 
                id="vehicle-make-select"
                class="form-select"
                data-url="{{ route('public.ajax.vehicle-makes') }}"
                aria-label="{{ __('Select Vehicle Make') }}"
            >
                <option value="">{{ __('Select Make') }}</option>
            </select>
        </div>
        <div class="col-lg-3 col-md-6">
            <select 
                name="model_id" 
                id="vehicle-model-select"
                class="form-select"
                data-url="{{ route('public.ajax.vehicle-models') }}"
                aria-label="{{ __('Select Vehicle Model') }}"
                disabled
            >
                <option value="">{{ __('Select Model') }}</option>
            </select>
        </div>
        <div class="col-lg-2 col-md-6">
            <select 
                name="year_id" 
                id="vehicle-year-select"
                class="form-select"
                data-url="{{ route('public.ajax.vehicle-years') }}"
                aria-label="{{ __('Select Vehicle Year') }}"
                disabled
            >
                <option value="">{{ __('Select Year') }}</option>
            </select>
        </div>
        <div class="col-lg-3 col-md-6">
            <select 
                name="variant_id" 
                id="vehicle-variant-select"
                class="form-select"
                data-url="{{ route('public.ajax.vehicle-variants') }}"
                aria-label="{{ __('Select Vehicle Variant') }}"
                disabled
            >
                <option value="">{{ __('Select Variant') }}</option>
            </select>
        </div>
        <div class="col-lg-1 col-md-12">
            <button 
                type="button" 
                id="vehicle-search-btn"
                class="btn btn-primary w-100"
                data-search-url="{{ route('public.ajax.search-products-by-vehicle') }}"
                disabled
            >
                <i class="ti ti-search"></i>
                <span class="d-none d-md-inline ms-1">{{ __('Search') }}</span>
            </button>
        </div>
    </div>
    <div id="vehicle-search-results" class="mt-4" style="display: none;">
        <!-- Search results will be loaded here -->
    </div>
</div>

@push('scripts')
<script>
document.addEventListener('DOMContentLoaded', function() {
    const vehicleSearch = document.querySelector('[data-bb-toggle="vehicle-search"]');
    if (!vehicleSearch) return;

    const makeSelect = document.getElementById('vehicle-make-select');
    const modelSelect = document.getElementById('vehicle-model-select');
    const yearSelect = document.getElementById('vehicle-year-select');
    const variantSelect = document.getElementById('vehicle-variant-select');
    const searchBtn = document.getElementById('vehicle-search-btn');
    const resultsContainer = document.getElementById('vehicle-search-results');

    // Load initial makes
    loadMakes();

    // Event listeners
    makeSelect.addEventListener('change', function() {
        const makeId = this.value;
        resetSelects(['model', 'year', 'variant']);
        
        if (makeId) {
            loadModels(makeId);
        }
    });

    modelSelect.addEventListener('change', function() {
        const modelId = this.value;
        resetSelects(['year', 'variant']);
        
        if (modelId) {
            loadYears(modelId);
        }
    });

    yearSelect.addEventListener('change', function() {
        const yearId = this.value;
        resetSelects(['variant']);
        
        if (yearId) {
            loadVariants(yearId);
        }
    });

    variantSelect.addEventListener('change', function() {
        searchBtn.disabled = !this.value;
    });

    searchBtn.addEventListener('click', function() {
        const variantId = variantSelect.value;
        if (variantId) {
            searchProducts(variantId);
        }
    });

    function loadMakes() {
        fetch(makeSelect.dataset.url)
            .then(response => response.json())
            .then(data => {
                if (data.error === false && data.data) {
                    populateSelect(makeSelect, data.data);
                    makeSelect.disabled = false;
                }
            })
            .catch(error => console.error('Error loading makes:', error));
    }

    function loadModels(makeId) {
        const url = new URL(modelSelect.dataset.url, window.location.origin);
        url.searchParams.append('make_id', makeId);
        
        fetch(url)
            .then(response => response.json())
            .then(data => {
                if (data.error === false && data.data) {
                    populateSelect(modelSelect, data.data);
                    modelSelect.disabled = false;
                }
            })
            .catch(error => console.error('Error loading models:', error));
    }

    function loadYears(modelId) {
        const url = new URL(yearSelect.dataset.url, window.location.origin);
        url.searchParams.append('model_id', modelId);
        
        fetch(url)
            .then(response => response.json())
            .then(data => {
                if (data.error === false && data.data) {
                    populateSelect(yearSelect, data.data);
                    yearSelect.disabled = false;
                }
            })
            .catch(error => console.error('Error loading years:', error));
    }

    function loadVariants(yearId) {
        const url = new URL(variantSelect.dataset.url, window.location.origin);
        url.searchParams.append('year_id', yearId);
        
        fetch(url)
            .then(response => response.json())
            .then(data => {
                if (data.error === false && data.data) {
                    populateSelect(variantSelect, data.data);
                    variantSelect.disabled = false;
                }
            })
            .catch(error => console.error('Error loading variants:', error));
    }

    function searchProducts(variantId) {
        const url = new URL(searchBtn.dataset.searchUrl, window.location.origin);
        url.searchParams.append('variant_id', variantId);
        
        searchBtn.disabled = true;
        searchBtn.innerHTML = '<i class="spinner-border spinner-border-sm" role="status"></i> <span class="d-none d-md-inline ms-1">{{ __("Searching...") }}</span>';
        
        fetch(url)
            .then(response => response.json())
            .then(data => {
                if (data.error === false && data.data) {
                    resultsContainer.innerHTML = data.data;
                    resultsContainer.style.display = 'block';
                    resultsContainer.scrollIntoView({ behavior: 'smooth' });
                } else {
                    resultsContainer.innerHTML = '<div class="alert alert-warning">{{ __("No products found for the selected vehicle.") }}</div>';
                    resultsContainer.style.display = 'block';
                }
            })
            .catch(error => {
                console.error('Error searching products:', error);
                resultsContainer.innerHTML = '<div class="alert alert-danger">{{ __("An error occurred while searching. Please try again.") }}</div>';
                resultsContainer.style.display = 'block';
            })
            .finally(() => {
                searchBtn.disabled = false;
                searchBtn.innerHTML = '<i class="ti ti-search"></i> <span class="d-none d-md-inline ms-1">{{ __("Search") }}</span>';
            });
    }

    function populateSelect(selectElement, options) {
        // Clear existing options except the first one
        while (selectElement.children.length > 1) {
            selectElement.removeChild(selectElement.lastChild);
        }
        
        // Add new options
        Object.entries(options).forEach(([value, text]) => {
            const option = document.createElement('option');
            option.value = value;
            option.textContent = text;
            selectElement.appendChild(option);
        });
    }

    function resetSelects(types) {
        types.forEach(type => {
            let select;
            switch(type) {
                case 'model':
                    select = modelSelect;
                    break;
                case 'year':
                    select = yearSelect;
                    break;
                case 'variant':
                    select = variantSelect;
                    break;
            }
            
            if (select) {
                select.selectedIndex = 0;
                select.disabled = true;
                // Clear options except the first one
                while (select.children.length > 1) {
                    select.removeChild(select.lastChild);
                }
            }
        });
        
        searchBtn.disabled = true;
        resultsContainer.style.display = 'none';
    }
});
</script>
@endpush