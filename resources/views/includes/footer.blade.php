<!-- plugins:js -->
<script src="{{ asset('template/assets/vendors/js/vendor.bundle.base.js') }}"></script>
<!-- endinject -->
<!-- Plugin js for this page -->
<script src="{{ asset('template/assets/vendors/chart.js/Chart.min.js') }}"></script>
<script src="{{ asset('template/assets/vendors/bootstrap-datepicker/bootstrap-datepicker.min.js') }}"></script>
<script src="{{ asset('template/assets/vendors/flot/jquery.flot.js') }}"></script>
<script src="{{ asset('template/assets/vendors/flot/jquery.flot.resize.js') }}"></script>
<script src="{{ asset('template/assets/vendors/flot/jquery.flot.categories.js') }}"></script>
<script src="{{ asset('template/assets/vendors/flot/jquery.flot.fillbetween.js') }}"></script>
<script src="{{ asset('template/assets/vendors/flot/jquery.flot.stack.js') }}"></script>
<script src="{{ asset('template/assets/vendors/flot/jquery.flot.pie.js') }}"></script>
<!-- End plugin js for this page -->
<!-- inject:js -->
<script src="{{ asset('template/assets/js/off-canvas.js') }}"></script>
<script src="{{ asset('template/assets/js/hoverable-collapse.js') }}"></script>
<script src="{{ asset('template/assets/js/misc.js') }}"></script>
<!-- endinject -->
<!-- Custom js for this page -->
<script src="{{ asset('template/assets/js/dashboard.js') }}"></script>
<!-- End custom js for this page -->

<script src="{{ asset('template/assets/vendors/select2/select2.min.js') }}"></script>
<script src="{{ asset('template/assets/vendors/typeahead.js/typeahead.bundle.min.js') }}"></script>
<script src="{{ asset('template/assets/js/file-upload.js') }}"></script>
<script src="{{ asset('template/assets/js/select2.js') }}"></script>

<script src="https://unpkg.com/html5-qrcode" type="text/javascript"></script>
<script>
    function onScanSuccess(decodedText, decodedResult) {
    // handle the scanned code as you like, for example:

    // console.log(`Code matched = ${decodedText}`, decodedResult);
    $("#hasil-barcode").val(decodedText)
    }

    function onScanFailure(error) {
    // handle scan failure, usually better to ignore and keep scanning.
    // for example:
    console.warn(`Code scan error = ${error}`);
    }

    let html5QrcodeScanner = new Html5QrcodeScanner(
    "reader",
    { fps: 10, qrbox: {width: 250, height: 250} },
    /* verbose= */ false);
    html5QrcodeScanner.render(onScanSuccess, onScanFailure);
</script>
