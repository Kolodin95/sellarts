import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ['price', 'start', 'end', 'total', 'days'];

  connect() {
    // console.log(this.priceTarget);
    // console.log(this.startTarget);
    // console.log(this.endTarget);
    // console.log(this.priceTarget.innerHTML);
    // console.log(this.startTarget.value);
    // console.log(this.endTarget.value);
    // Je selectionne les inputs de start et end date

    // Event = Des que je change la valeur de l'input
    this.endTarget.addEventListener('change', (event) => {
      const startDate = new Date(this.startTarget.value)
      const endDate = new Date(this.endTarget.value)
      const diffDate = (endDate - startDate) / 1000 / 60 / 60 / 24
      const finalPrice = Number.parseInt(this.priceTarget.innerHTML, 10) * diffDate
      console.log(finalPrice)
      console.log(this.totalTarget)
      console.log(this.totalTarget.innerHTML)
      this.totalTarget.innerHTML = finalPrice;
      this.daysTarget.innerHTML = diffDate;
      console.log(daysTarget)
    } )
      // Si une des 2 valeurs est vide,
          //  alors rien
      // Sinon,
          // Calculer le nombre de jours entre les deux dates
          // mettre à jour le DOM span nb jours * le prix
  }
}
