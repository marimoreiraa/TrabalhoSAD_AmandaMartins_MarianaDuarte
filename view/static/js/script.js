document.getElementById("register").addEventListener("submit", function(event) {
    const username = document.getElementById("username").value.trim();
    const email = document.getElementById("email").value.trim();
    const password = document.getElementById("password").value.trim();
    const confirmPassword = document.getElementById("confirm_password").value.trim();

    // Verifica se todos os campos estão preenchidos
    if (!username || !email || !password || !confirmPassword) {
        alert("Por favor, preencha todos os campos.");
        event.preventDefault(); // Impede o envio do formulário
        return;
    }

    if (password !== confirmPassword) {
        alert("As senhas não coincidem.");
        event.preventDefault(); // Impede o envio do formulário
        return;
    }

});

document.getElementById("confirm_password").addEventListener("input", function() {
    const password = document.getElementById("password").value.trim();
    const confirmPassword = this.value.trim();
    const errorSpan = document.getElementById("password-error");

    if (password !== confirmPassword) {
        errorSpan.textContent = "As senhas não coincidem.";
    } else {
        errorSpan.textContent = "";
    }
});

