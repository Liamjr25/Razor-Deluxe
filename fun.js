class AddToCartButton extends HTMLElement {
    constructor() {
      super();
    
        this.createButton(this.innerHTML);
    }
  
    createStyle() {
        return `
        .add-to-cart-button-main {
            font-family: inherit;
            font-size: inherit;
            font-weight: inherit;
            background-color: #99de5f;
            padding: 0;
            border: 0;
            margin: 0;
            outline: 0;
            display: flex;
            justify-content: center;
            position: relative;
            border-radius: 0;
            box-shadow: 0 0.3em 0.8em rgba(0, 0, 0, 0.2) inset;
        }
      
        .add-to-cart-button-rear {
            width: 100%;
            height: 100%;
            display: flex;
            overflow: hidden;
            position: absolute;
            top: 0;
            left: 0;
        }
      
        .add-to-cart-button-icon {
            --icon-size: 40px;
            background-image: url("https://assets.codepen.io/430361/icon-cart.svg");
            width: var(--icon-size);
            height: var(--icon-size);
            margin: auto;
            transform-origin: bottom center;
        }
      
        .add-to-cart-button-front {
            color: #113302;
            /* background-image: linear-gradient(135deg, #f0ad5b 40%, #28bd11 90%); */
            background-image: linear-gradient(135deg, #37b800 40%, #33a303 90%);
            padding: 1.1em 1.5em;
            overflow: hidden;
            position: relative;
            box-shadow: 0.5em 0.5em 0.75em rgba(0, 0, 0, 0.3);
            box-sizing: border-box;
            transition: filter 64ms ease-out;
        }
      
        .add-to-cart-button-front:active {
            filter: brightness(0.85);
        }
      `;
    }
  
    createButton(elm) {
        this.attachShadow({ mode: "open" });
    
        this.animating = false;
    
      const buttonElm = document.createElement("button");
      const contentElm = document.createElement("div");
      const frontElm = document.createElement("div");
      const iconElm = document.createElement("div");
      const rearElm = document.createElement("div");
    
        contentElm.innerHTML = elm;
        contentElm.classList.add("add-to-cart-button-content");
    
        frontElm.append(contentElm);
        frontElm.classList.add("add-to-cart-button-front");
    
        iconElm.classList.add("add-to-cart-button-icon");
    
        rearElm.append(iconElm);
        rearElm.classList.add("add-to-cart-button-rear");
    
        buttonElm.append(rearElm, frontElm);
        buttonElm.classList.add("add-to-cart-button-main");
        buttonElm.addEventListener("click", evt => {
            this.addToCartAnimation(frontElm, iconElm);
    });
    
    const style = document.createElement("style");
    
    style.textContent = this.createStyle(this.clientWidth, this.clientHeight);
    
    this.shadowRoot.append(style, buttonElm);
}
  
addToCartAnimation(frontElm, iconElm) {
    if (this.animating === true) {
        return;
    }
    
    this.animating = true;
    
  const tl = gsap.timeline();
    
    tl.to(frontElm, {
        transform: `translateY(-50%) scale(1.25)`,
    ease: "power3.out",
    duration: 0.1
});
    
tl.to(frontElm, {
    transform: `translateY(-100%) scale(0.35)`,
ease: "power4.out",
duration: 0.25
});
    
tl.to(frontElm, {
    transform: "scale(0)",
    ease: "power2.out",
    duration: 0.2
});
    
tl.to(iconElm, {
    transform: "scaleX(1.5) scaleY(0.5)",
    ease: "power4.out",
    duration: 0.15
});
    
tl.to(iconElm, {
    transform: "rotate(-15deg) scaleX(1) translateY(-10%)",
    ease: "power4.out",
    duration: 0.15
});
    
tl.to(iconElm, {
    transform: "",
    ease: "power2.out",
    duration: 0.05
});
    
tl.to(iconElm, {
    transform: "rotate(7deg) translateY(-5%)",
    ease: "power4.out",
    duration: 0.15
});
    
tl.to(iconElm, {
    transform: "",
    ease: "power2.out",
    duration: 0.05
});
    
tl.to(iconElm, {
    transform: "skewX(25deg)",
    ease: "power4.out",
    duration: 0.2,
    delay: 0.3
});
    
tl.to(iconElm, {
    transform: "skewX(-45deg) translateX(100%)",
    ease: "power3.in",
    duration: 0.3,
    delay: 0.1
});
    
tl.to(iconElm, {
    opacity: 0,
    ease: "power2.out",
    duration: 0.2
}, "-=0.1");
    
setTimeout(() => {
    tl.progress(0);
tl.clear();
    
this.animating = false;
}, 3000);
}
}

// Define the custom element as a web component
customElements.define("add-to-cart-button", AddToCartButton);