document.addEventListener("DOMContentLoaded", function() {
  /**
   * HomePage - Help section
   */
  class Help {
    constructor($el) {
      this.$el = $el;
      this.$buttonsContainer = $el.querySelector(".help--buttons");
      this.$slidesContainers = $el.querySelectorAll(".help--slides");
      this.currentSlide = this.$buttonsContainer.querySelector(".active").parentElement.dataset.id;
      this.init();
    }

    init() {
      this.events();
    }

    events() {
      /**
       * Slide buttons
       */
      this.$buttonsContainer.addEventListener("click", e => {
        if (e.target.classList.contains("btn")) {
          this.changeSlide(e);
        }
      });

      /**
       * Pagination buttons
       */
      this.$el.addEventListener("click", e => {
        if (e.target.classList.contains("btn") && e.target.parentElement.parentElement.classList.contains("help--slides-pagination")) {
          this.changePage(e);
        }
      });
    }

    changeSlide(e) {
      e.preventDefault();
      const $btn = e.target;

      // Buttons Active class change
      [...this.$buttonsContainer.children].forEach(btn => btn.firstElementChild.classList.remove("active"));
      $btn.classList.add("active");

      // Current slide
      this.currentSlide = $btn.parentElement.dataset.id;

      // Slides active class change
      this.$slidesContainers.forEach(el => {
        el.classList.remove("active");

        if (el.dataset.id === this.currentSlide) {
          el.classList.add("active");
        }
      });
    }

    /**
     * TODO: callback to page change event
     */
    changePage(e) {
      e.preventDefault();
      const page = e.target.dataset.page;

      console.log(page);
    }
  }
  const helpSection = document.querySelector(".help");
  if (helpSection !== null) {
    new Help(helpSection);
  }

  /**
   * Form Select
   */
  class FormSelect {
    constructor($el) {
      this.$el = $el;
      this.options = [...$el.children];
      this.init();
    }

    init() {
      this.createElements();
      this.addEvents();
      this.$el.parentElement.removeChild(this.$el);
    }

    createElements() {
      // Input for value
      this.valueInput = document.createElement("input");
      this.valueInput.type = "text";
      this.valueInput.name = this.$el.name;

      // Dropdown container
      this.dropdown = document.createElement("div");
      this.dropdown.classList.add("dropdown");

      // List container
      this.ul = document.createElement("ul");

      // All list options
      this.options.forEach((el, i) => {
        const li = document.createElement("li");
        li.dataset.value = el.value;
        li.innerText = el.innerText;

        if (i === 0) {
          // First clickable option
          this.current = document.createElement("div");
          this.current.innerText = el.innerText;
          this.dropdown.appendChild(this.current);
          this.valueInput.value = el.value;
          li.classList.add("selected");
        }

        this.ul.appendChild(li);
      });

      this.dropdown.appendChild(this.ul);
      this.dropdown.appendChild(this.valueInput);
      this.$el.parentElement.appendChild(this.dropdown);
    }

    addEvents() {
      this.dropdown.addEventListener("click", e => {
        const target = e.target;
        this.dropdown.classList.toggle("selecting");

        // Save new value only when clicked on li
        if (target.tagName === "LI") {
          this.valueInput.value = target.dataset.value;
          this.current.innerText = target.innerText;
        }
      });
    }
  }
  document.querySelectorAll(".form-group--dropdown select").forEach(el => {
    new FormSelect(el);
  });

  /**
   * Hide elements when clicked on document
   */
  document.addEventListener("click", function(e) {
    const target = e.target;
    const tagName = target.tagName;

    if (target.classList.contains("dropdown")) return false;

    if (tagName === "LI" && target.parentElement.parentElement.classList.contains("dropdown")) {
      return false;
    }

    if (tagName === "DIV" && target.parentElement.classList.contains("dropdown")) {
      return false;
    }

    document.querySelectorAll(".form-group--dropdown .dropdown").forEach(el => {
      el.classList.remove("selecting");
    });
  });

  /**
   * Switching between form steps
   */
  class FormSteps {
    constructor(form) {
      this.$form = form;
      this.$next = form.querySelectorAll(".next-step");
      this.$prev = form.querySelectorAll(".prev-step");
      this.$step = form.querySelector(".form--steps-counter span");
      this.currentStep = 1;

      this.$stepInstructions = form.querySelectorAll(".form--steps-instructions p");
      const $stepForms = form.querySelectorAll("form > div");
      this.slides = [...this.$stepInstructions, ...$stepForms];

      this.init();
    }

    /**
     * Init all methods
     */
    init() {
      this.events();
      this.updateForm();
    }

    /**
     * All events that are happening in form
     */
    events() {
      // Next step
      this.$next.forEach(btn => {
        btn.addEventListener("click", e => {
          e.preventDefault();
          this.currentStep++;
          this.updateForm();
        });
      });

      // Previous step
      this.$prev.forEach(btn => {
        btn.addEventListener("click", e => {
          e.preventDefault();
          this.currentStep--;
          this.updateForm();
        });
      });

      // Form submit
      this.$form.querySelector("form").addEventListener("submit", e => this.submit(e));
    }

    /**
     * Update form front-end
     * Show next or previous section etc.
     */
    updateForm() {
      this.$step.innerText = this.currentStep;

      // TODO: Validation

      this.slides.forEach(slide => {
        slide.classList.remove("active");

        if (slide.dataset.step == this.currentStep) {
          slide.classList.add("active");
        }
      });

      this.$stepInstructions[0].parentElement.parentElement.hidden = this.currentStep >= 6;
      this.$step.parentElement.hidden = this.currentStep >= 6;










      // TODO: get data from inputs and show them in summary
      const buttonNext = document.querySelectorAll("button.btn.next-step")
const bagCategorySummary = document.querySelectorAll('span.summary--text')[0];



//CATEGORY STEP1
  let arrCategory = [  ]

       buttonNext[0].addEventListener('click', function(event) {
         event.preventDefault();

         const radioBoxInstitutionLabel = document.querySelectorAll("div[data-step='3']  div.form-group.form-group--checkbox label ")
         const checkBoxCategory = document.querySelectorAll("div[data-step='1']  div.form-group.form-group--checkbox label input[value]")

         console.log("checkBoxCategory ", checkBoxCategory)
//Checbox checked, get values
    for (let i = 0; i < checkBoxCategory.length; i++) {
        if (checkBoxCategory[i].checked === true) {
            arrCategory.push(checkBoxCategory[i].value);
        }
    }
          console.log("Checked Values" ,arrCategory )

 //Each Label of institution, get value of category.value.id
         radioBoxInstitutionLabel.forEach((element)=>{

           console.log("element: ",element  )
           console.log("radioBoxInstitutionValue: ", element.querySelector("input[type='radio']").value)
           console.log("arrCategory: ",arrCategory  )


   if (  !arrCategory.includes(element.querySelector("input[type='radio']").value) ){

                      element.style.display = 'none';
         } else{
                      element.style.display = '';
                    }

 //       for (let i = 0; i < arrCategory.length; i++) {
 //         console.log(i ," index: ", arrCategory[i])
 // console.log("ROWNE: z", element)
 //
 //         // if ( element.querySelector("input[type='radio']").value in arrCategory.values() ){
 //         //OK if ( element.querySelector("input[type='radio']").value !== arrCategory.find(element => element)){
 //         // if ( element.querySelector("input[type='radio']").value !== arrCategory[i]){
 //         // if (element.querySelector("input[type='radio']").value in arrCategory[i] ){
 //         // if (element.value !== arrCategory[i] ){
 //         // if (arrCategory in element.querySelector("input[type='radio']").value){
 //         // if ( element.querySelector("input[type='radio']").value in  arrCategory){
 //         // if (!containsAny(arrCategory, element.querySelector("input[type='radio']").value) ){
 //   }




    })
})

//BAGS STEP2
          buttonNext[1].addEventListener('click', function(event) {
   event.preventDefault();

            const bagValue = document.querySelector("input[name='bags']")

            //TODO  // const categoryValue = document.querySelector("  input[value=Buttoncheckbox]")
  bagCategorySummary.innerText = 'Liczba worków: ' + bagValue.value  ;//TODO
    })




  //INSTITUTION STEP3
const radioBoxInstitution = document.querySelectorAll("div[data-step='3']  div.form-group.form-group--checkbox label")

      radioBoxInstitution.forEach(radiobox => {
    radiobox.addEventListener('click', function(event) {
      console.log("Click on radiobox");

      const institutionSummary = document.querySelectorAll('span.summary--text')[1];
         const institutionTitle = this.querySelector(' div.title')
          console.log(institutionTitle);

        institutionSummary.innerText = 'Dla: ' +   institutionTitle.innerText;

          // bagCategorySummary.innerText = bagCategorySummary.innerText + ' zawierające: ' + radiobox.querySelector("div.category").innerText

    })

 })





          //ADDRESS STEP4
  buttonNext[3].addEventListener('click', function(event) {
   event.preventDefault();

   const departureSummary = document.querySelectorAll(' div.form-section--column > ul >li') ;

      const addressStreetDesc = document.querySelector("input[name='address']");
      const addressCityDesc = document.querySelector("input[name='city']");
      const addressPostCodeDesc = document.querySelector("input[name='postcode']");
      const addressPhoneDesc = document.querySelector("input[name='phone']");

               //3


            departureSummary[0].innerText = 'Ulica: ' + addressStreetDesc.value;
            departureSummary[1].innerText = 'Miasto: ' + addressCityDesc.value;
            departureSummary[2].innerText = 'Kod: ' + addressPostCodeDesc.value;
            departureSummary[3].innerText = 'Telefon: ' + addressPhoneDesc.value;

       const departureData = document.querySelector("input[name='data']");
       const departureTime = document.querySelector("input[name='time']");
       const departureInfo = document.querySelector("textarea[name='more_info']");

            departureSummary[4].innerText = 'Data: ' + departureData.value;
            departureSummary[5].innerText = 'Czas: ' + departureTime.value;
            departureSummary[6].innerText = 'Dodatkowe informacje:\n' + departureInfo.value;
  })
// })













    }

    /**
     * Submit form
     *
     * TODO: validation, send data to server
     */
    submit(e) {

      this.currentStep++;
      this.updateForm();
    }
  }
  const form = document.querySelector(".form--steps");
  if (form !== null) {
    new FormSteps(form);
  }

  // ####################################################################################
// ##########################HIDDING INSTITUTIONS#######################################

// const institution = document.querySelectorAll("div.form-group.form-group--checkbox.radio");
// // const institution = document.querySelectorAll("input[type=radio]");
// // const institution = document.querySelectorAll("input[type=radio]");
// console.log(institution)
//
// function hideAll() {
//     institution[0].style.display = 'none';
//     institution[1].style.display = 'none';
//     institution[2].style.display = 'none';
//     institution[3].style.display = 'none';
//     institution[4].style.display = 'none';
// }
// // document.querySelectorAll('input[type=checkbox]').forEach(element =>{
// //   element.addEventListener('click', (event) => {
//
// // document.querySelector("[data-step='1']").addEventListener('click', (event) => {
// document.querySelector('div.form-group.form-group--checkbox').addEventListener('click', (event) => {
//
// // document.querySelector('input[type=checkbox]').addEventListener('click', (event) => {
// console.log(event)
//     event.preventDefault();
//
//     // const selectedValue = document.querySelector("input").value;
//     // const selectedValue = document.getElementsByName('categories').value;
//     // const selectedValue = document.querySelector('input[type=checkbox]').value;
//     const selectedValue = document.querySelector('div.form-group.form-group--checkbox.radio label input[value]').value;
// console.log("1")
// console.log(selectedValue)
//     if (selectedValue === '1') {
//         hideAll();
//         institution[0].style.display = 'block';
//     } else if (selectedValue === '2') {
//         hideAll();
//         institution[1].style.display = 'block';
//     } else if (selectedValue === '3') {
//         hideAll();
//         institution[2].style.display = 'block';
//     } else if (selectedValue === '4') {
//         hideAll();
//         institution[3].style.display = 'block';
//     } else {
//         hideAll();
//         institution[4].style.display = 'block';
//     }
//
// })



// })





  // /**
  //  * Hide elements when clicked on document
  //  */
  // document.addEventListener("click", function(e) {
  //   const target = e.target;
  //   const tagName = target.tagName;
  //
  //   if (target.classList.contains("dropdown")) return false;
  //
  //   if (tagName === "LI" && target.parentElement.parentElement.classList.contains("dropdown")) {
  //     return false;
  //   }
  //
  //   if (tagName === "DIV" && target.parentElement.classList.contains("dropdown")) {
  //     return false;
  //   }
  //
  //   document.querySelectorAll(".form-group--dropdown .dropdown").forEach(el => {
  //     el.classList.remove("selecting");
  //   });
  // });







  // ####################################################################################
// ##########################SUMMARY#######################################
// const buttonNext = document.querySelectorAll("button .btn.next-step")
// // const buttonNext2 = document.querySelector("#button2");
//
// buttonNext.addEventListener('clic', (event) => {
// console.log(event);
// console.log(buttonNext);
//     event.preventDefault();
//
// // const providedBags = document.querySelector("#bag").value;
// const providedBags = document.querySelector("label input[name='bags']").value;
// console.log("FFF");
// console.log(providedBags);
//
// })












// document.querySelectorAll("div[data-step='1'] div.form-group.form-group--checkbox").forEach(checkbox => {
//     checkbox.addEventListener('click', function(event) {
//       console.log("Click on checkbox");
//          event.preventDefault();
//       const categoryDesc = this.querySelector("span.description")
//           if (this.innerText === "ubrania, do wyrzucenia"){
//             categoryDesc.innerText = "ubrania, do wyrzuceniaubrania, do wyrzucenia"
//           }
//           if (this.innerText === "zabawki"){
//             this.innerText = "zabawkizabawkizabawki"
//           }
//           if (this.innerText === "ubrania, które nadają się do ponownego użycia"){
//             this.innerText = "ubrania, które nadają się do ponownego użyciaubrania, które nadają się do ponownego użycia"
//           }
//           if (this.innerText === "książki"){
//             this.innerText = "książkiksiążkiksiążki"
//           }
//           if (this.innerText === "inne"){
//             this.innerText = "inneinneinne"
//           }
//
//
//
//
//     })
// })





});






