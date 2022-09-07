import Swal from 'sweetalert2'
const Swal = require('sweetalert2')
import Swal from 'sweetalert2/dist/sweetalert2.js'
import 'sweetalert2/src/sweetalert2.scss'
function epostauyari() {
    swal({

        title: "Uyarı..!",
        text: "Sistemde Kayıtlı E-Posta Adresi Bulunamadı..",
        icon: "warning",
        button: "Kapat!",

    });
}