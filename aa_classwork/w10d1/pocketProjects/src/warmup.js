
const partyHeader = document.getElementById('party');

// export const htmlGenerator = (string, htmlElement) => {
//     let paragraph = document.createElement('p');
//     let paragraphText = document.createTextNode(string);
//     paragraph.appendChild(paragraphText);
//     htmlElement.appendChild(paragraph);
// };

export const htmlGenerator = (string, htmlElement) => {
    let children = Array.from(htmlElement.children);
    if (children.length) {
        htmlElement.removeChild(children[0]);
    }
    let paragraph = document.createElement('p');
    let paragraphText = document.createTextNode(string);
    paragraph.appendChild(paragraphText);
    htmlElement.appendChild(paragraph);
};
htmlGenerator('Party Time.', partyHeader);

// htmlGenerator('I <3 Vanilla DOM manipulation', partyHeader);

// module.exports = htmlGenerator;