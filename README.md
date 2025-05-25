# Aplicativo Gamificado para o Ensino de Educação Financeira (EF)

## 📱 Sobre o Projeto

Este repositório apresenta o protótipo visual de um aplicativo móvel gamificado voltado para o ensino de Educação Financeira (EF). O projeto foi desenvolvido no âmbito de uma **Pesquisa de Iniciação Científica (PIC)** realizada em 2024 na instituição **Fundação Educacional do Município de Assis (FEMA)**, resultando na elaboração de um artigo científico publicado com os achados e fundamentos conceituais da proposta. O artigo referente à pesquisa desenvolvida está disponível em: https://cepein.femanet.com.br/BDigital/arqPics/2311550312P1157.pdf

Atualmente, o sistema consiste apenas em um **protótipo funcional em nível de interface**, com simulações utilizando dados estáticos e sem integração com um sistema de backend ou banco de dados. Os protótipos dos jogos estão operacionais, simulando comportamentos com dados fixos para fins de validação de usabilidade e estruturação de conteúdo educacional.

A estrutura implementada visa apresentar o fluxo de criação de conteúdos, gerenciamento de cronogramas semanais e experiências de desafios gamificados, baseando-se em abordagens como storytelling e quizzes voltados à aprendizagem interativa.

## 🎯 Objetivo Geral

Desenvolver um aplicativo prototípico que utilize elementos de gamificação como ferramenta de apoio ao processo de ensino-aprendizagem da Educação Financeira, proporcionando ao público-alvo uma jornada de aprendizado progressiva e contextualizada.

## 🧩 Estrutura Funcional da Plataforma

### 1. Módulo de Temas
O sistema permite o cadastramento de temas que funcionam como agrupadores para as semanas de desafios. Cada tema é utilizado para identificar os conteúdos abordados nos desafios subsequentes. Não há limitação de reutilização de temas.

### 2. Módulo de Cronograma Semanal
A plataforma adota uma organização semanal para a disponibilização dos desafios. A cada nova semana, é possível programar desafios baseados em um tema previamente cadastrado. Esse processo é realizado por meio de um módulo administrativo com interface interativa de seleção de datas.

### 3. Módulo de Criação de Desafios
Cada desafio pode conter diferentes estruturas, que se complementam com o objetivo de maximizar o aprendizado:

- **Storytelling:** Utiliza narrativas e diálogos entre personagens para contextualizar situações do cotidiano relacionadas à EF.
- **Quiz:** Apresenta perguntas objetivas com múltipla escolha ao final de cada desafio, com a finalidade de reforçar os conhecimentos adquiridos.

### 4. Experiência do Jogador
O usuário do tipo jogador acessa os desafios por meio de uma interface interativa que inclui:

- Minigames (como desafios de associação)
- Conteúdos audiovisuais explicativos
- Narrativas (storytelling) temáticas
- Quizzes finais para reforço e avaliação do conhecimento

## 🔎 Estado Atual do Protótipo

Até o presente momento, o projeto encontra-se em fase de prototipação visual, com foco no desenvolvimento da interface e da experiência de usuário. Embora os fluxos administrativos e os desafios estejam simulando comportamentos reais por meio de dados fixos, **não há integração com sistemas de back-end ou persistência efetiva de dados**. Todos os conteúdos e interações são renderizados localmente e representam o comportamento previsto da versão final da aplicação.

Apesar dessa limitação, os protótipos dos minigames, quizzes e demais elementos gamificados já se encontram em funcionamento parcial, permitindo simulações interativas para fins de demonstração e validação da experiência de usuário.

## 🛠️ Tecnologias Utilizadas

- **Frontend:** (SDK Flutter)

> *Nota: O back-end, incluindo banco de dados e gerenciamento de progresso do usuário, será implementado nas etapas posteriores do desenvolvimento.*

## ✅ Status do Projeto

- [x] Protótipo funcional das principais interfaces
- [x] Implementação dos fluxos administrativos (temas, cronogramas, desafios)
- [x] Protótipos de storytelling e quiz com dados simulados
- [x] Simulação da experiência do jogador
- [ ] Desenvolver back-end para persistir as informações geradas no aplicativo.
- [ ] Integração com sistema de back-end
- [ ] Persistência de dados e gerenciamento de progresso
- [ ] Testes de usabilidade com público-alvo
- [ ] Validação pedagógica da aplicação

## 📚 Considerações Finais

Este protótipo representa um passo inicial na construção de uma ferramenta educacional gamificada para o ensino de Educação Financeira. Com base nos princípios da aprendizagem ativa e no uso de recursos tecnológicos interativos, a plataforma busca fomentar a autonomia do usuário no processo de aquisição de conhecimentos financeiros. Trabalhos futuros devem envolver a implementação completa da lógica de negócios, integração com sistemas de armazenamento e autenticação, além da aplicação de testes com usuários reais e a análise dos impactos educacionais decorrentes do uso da ferramenta.

## 👥 Autoria

Este projeto foi desenvolvido como parte de um trabalho acadêmico. Para mais informações, entre em contato com os autores (disponível no artigo).

---

**Nota:** As figuras mencionadas nos fluxos descritos estão disponíveis na documentação anexa ao projeto ou no protótipo visual desenvolvido.
