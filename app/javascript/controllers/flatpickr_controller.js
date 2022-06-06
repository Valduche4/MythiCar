import { Controller } from "stimulus"
import flatpickr from "flatpickr"

export default class extends Controller {

  connect() {
    console.log("hello")
    flatpickr(".date-flatpickr", {
      altInput: true,
      altFormat: "F j, Y",
      dateFormat: "Y-m-d",
    })
  }
}
