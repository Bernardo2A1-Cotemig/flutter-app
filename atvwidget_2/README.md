1-Por que agora foi necessário usar um StatefulWidget?

O StatefulWidget tornou-se necessário porque a interface agora precisa ser dinâmica. Diferente do StatelessWidget, que é estático, o StatefulWidget permite que o widget armazene dados que podem mudar durante o ciclo de vida do aplicativo, refletindo essas mudanças visualmente.

2-Qual informação da tela muda quando o botão é pressionado?

Geralmente, em exemplos introdutórios de Flutter (como o app de contador), a informação que muda é um valor numérico (um contador) exibido em um widget de texto no centro da tela.

3-Qual variável foi alterada dentro do setState()?

Embora o código específico não esteja visível, em contextos padrão de aprendizado, a variável alterada costuma ser o _counter (ou uma variável similar responsável por armazenar o estado que deve ser atualizado).

4-O que o setState() faz no Flutter?

O setState() notifica o framework de que o estado interno do objeto mudou. Isso dispara o método build(), fazendo com que o Flutter reconstrua o widget e atualize a interface do usuário com os novos valores.

5-O que poderia acontecer se a variável fosse alterada sem usar setState()?

A variável seria atualizada na memória do dispositivo, mas a tela não seria atualizada. O usuário continuaria vendo a informação antiga, pois o Flutter não "saberia" que precisa redesenhar o widget para mostrar o novo valor.