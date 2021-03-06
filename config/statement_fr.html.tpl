<!-- LEAGUES level1 level2 level3 level4 level5 -->
<div id="statement_back" class="statement_back" style="display:none"></div>
<div class="statement-body">

    <!-- LEAGUE ALERT -->
    <div style="color: #7cc576;
    background-color: rgba(124, 197, 118,.1);
    padding: 20px;
    margin-right: 15px;
    margin-left: 15px;
    margin-bottom: 10px;
    text-align: left;">

    <!-- BEGIN level1 level2 level3 level4 -->
        <div style="text-align: center; margin-bottom: 6px">
            <img src="//cdn.codingame.com/smash-the-code/statement/league_wood_04.png"/>
        </div>
        <p style="text-align: center; font-weight: 700; margin-bottom: 6px;">
          <!-- BEGIN level1 -->
          Ce puzzle se déroule en <b>ligues</b>.
          <!-- END -->
          <!-- BEGIN level2 -->
          Bienvenue en ligue Bois 2 !
          <!-- END -->
          <!-- BEGIN level3 -->
          Bienvenue en ligue Bois 1 !
          <!-- END -->
          <!-- BEGIN level4 -->
          Bienvenue en ligue Bronze !
          <!-- END -->
        </p>
        <!-- END -->
        <span class="statement-league-alert-content">
            <!-- BEGIN level1 -->
              Les ligues Bois doivent être considérées comme un tutoriel pour apprendre les différentes règles du jeu. <br>
              En ligue Bronze, toutes les règles sont débloquées et alors débute le challenge, le vrai. <br/> <br/>
            <!-- END -->
            <!-- BEGIN level2 -->
            Vous pouvez désormais entraîner des unités de niveau 2 et 3. Les unités de niveau 1 ne peuvent plus détruire d'unités de niveau 1.<br/> <br/>
            <!-- END -->
            <!-- BEGIN level3 -->
            Vous pouvez désormais construire des mines (<action>BUILD MINE</action>) pour augmenter votre revenu d'or. Les mines ne peuvent être construites qu'à certains endroits spécifiques.<br/> <br/>
            <!-- END -->
            <!-- BEGIN level4 -->
            Vous pouvez désormais construire des tours (<action>BUILD TOWER</action>) pour protéger des cases. Vous avez accès à toutes les règles.<br/> <br/>
            <!-- END -->

              Des IAs de base sont disponibles dans le <a target="_blank" href="https://github.com/Azkellas/a-code-of-ice-and-fire/tree/develop/src/test/starterkit">kit de démarrage</a>. Elles peuvent vous aider à démarrer votre propre IA.

            Découvrez les <a target="_blank" href="https://github.com/Azkellas/a-code-of-ice-and-fire/blob/develop/COMMUNITY.MD">évenements de la communauté</a> cette semaine et prenez du plaisir à coder!
        </span>
    </div>


    <!-- GOAL -->
    <div class="statement-section statement-goal">
        <h1>
            <span class="icon icon-goal">&nbsp;</span>
            <span>Objectif</span>
        </h1>
        
        <div class="statement-goal-content">
            Entrainez des armées pour défaire votre adversaire en détruisant son quartier général.
        </div>
    </div>

    <!-- RULES -->
    <div class="statement-section statement-rules">
        <h1>
            <span class="icon icon-rules">&nbsp;</span>
            <span>Règles du jeu</span>
        </h1>
        <div>
            <div class="statement-rules-content">
                <p><strong>La carte</strong></p>
                <p>La carte est une grille de <const>12x12</const> dont le coin en haut à gauche est la case <const>(0,0)</const>. La carte est générée aléatoirement au début de chaque partie. </p>
                <p>
                    Les deux joueurs commencent la partie avec un <strong>quartier général (QG)</strong> dans des coins opposés de la carte (<const>(0,0)</const> et <const>(11,11)</const>).
                </p>
                <p>
                    Une case peut être
                </p>
                <ul style="padding-top: 0;">
                    <li> néant (<const>#</const>) : n'est pas une case jouable.</li>
                    <li> neutre (<const>.</const>) : n'appartient à aucun joueur.</li>
                    <li> capturée (<const>O</const> ou <const>X</const>) : appartient à un joueur.</li>
                    <li> inactive (<const>o</const> ou <const>x</const>) : appartient à un joueur mais inactive.</li>
                </ul>

                <p><strong>Possession de territoire</strong></p>
                <p>
                    Chaque joueur capture des cases pour agrandir son territoire. Le territoire d'un joueur est composé de toutes les cases possédées par un joueur qui sont <strong>actives</strong>.
                </p>
                <p>
                    Une case est dite <strong>active</strong> si et seulement si la case est connectée au QG ; c'est à dire, s'il existe un chemin menant du QG jusqu'à cette case.
                </p>
                <div style="margin-left:auto; margin-right:auto; width:350px;">
                    <img src="https://www.codingame.com/servlet/mfileservlet?id=28933360811968" alt="territory-ownership" style="margin-left:auto; margin-right:auto; width:350px;" /><br/>
                    <p><i>Ici, le territoire rouge est composé de 6 cases. Les 3 cases rouge foncé sont maintenant inactives car le joueur bleu a coupé une partie du territoire. En capturant, par exemple, la case marquée par un X, le joueur rouge peut rendre ces cases actives à nouveau.</i></p>
                </div>

                <br/>
                <p><strong>Revenu</strong></p>
                <p>
                    Au début de chaque tour, les joueurs gagnent ou perdent de l'or en fonction de leur revenu. Chaque case <strong>active</strong> possédée donne <const>+1</const> de revenu.
                </p>
                <p>
                    Les unités d'armées impactent négativement le revenu (coût d'entretien).
                </p>
                <!-- BEGIN level1 -->
                    <ul style="padding-top: 0; padding-bottom:0;">
                        <li>Les unités de niveau <const>1</const> réduisent les revenus de <const>1</const> par unité.</li>
                    </ul>
                <!-- END -->
                <!-- BEGIN level2 -->
                <div style="color: #7cc576;
                    background-color: rgba(124, 197, 118,.1);
                    padding: 2px;">
                    <ul style="padding-top: 0; padding-bottom:0;">
                        <li>Les unités de niveau <const>1</const> réduisent les revenus de <const>1</const> par unité.</li>
                        <li>Les unités de niveau <const>2</const> réduisent les revenus de <const>4</const> par unité.</li>
                        <li>Les unités de niveau <const>3</const> réduisent les revenus de <const>20</const> par unité.</li>
                    </ul>
                </div>
                <!-- END -->
                <!-- BEGIN level3 level4 level5 -->
                    <ul style="padding-top: 0; padding-bottom:0;">
                        <li>Les unités de niveau <const>1</const> réduisent les revenus de <const>1</const> par unité.</li>
                        <li>Les unités de niveau <const>2</const> réduisent les revenus de <const>4</const> par unité.</li>
                        <li>Les unités de niveau <const>3</const> réduisent les revenus de <const>20</const> par unité.</li>
                    </ul>
                <!-- END -->
                <!-- BEGIN level3 -->
                <div style="color: #7cc576;
                    background-color: rgba(124, 197, 118,.1);
                    padding: 2px;">
                    <p>
                        Une mine augmente le revenu d'un joueur de <const>+4</const>.
                    </p>
                </div>
                <!-- END -->
                <!-- BEGIN level4 level5 -->
                    <p>
                        Une mine augmente le revenu d'un joueur de <const>+4</const>.
                    </p>
                <!-- END -->
                <p>
                    Si un joueur se retrouve avec un revenu négatif et ne peut pas payer le coût d'entretien de ses unités avec son or, toutes ses unités sont détruites et son total d'or est remis à <const>0</const>.
                </p>


                <!-- BEGIN level3 -->

                <div style="color: #7cc576;
                    background-color: rgba(124, 197, 118,.1);
                    padding: 2px;">
                    <br/>
                    <p><strong>Bâtiments</strong></p>
                    <p>
                        Les joueurs peuvent construire des bâtiments avec l'action <action>BUILD</action> pour augmenter leur puissance économique ou militaire. Il n'est possible de construire que sur une case possédée, active et non occupée.
                    </p>
                    <p>
                        Dans cette ligue, les joueurs ne peuvent construire qu'un batiment : la <action>MINE</action>.
                    </p>
                    <ul style="padding-top: 0; padding-bottom:0;">
                        <li><img src="http://file.azke.fr/COIF/mine_neutre.png" style="height:20px;"/><action>MINE</action>: les mines produisent de l'or chaque tour et ne peuvent être construites qu'à certains endroits spécifiques. Le coût de construction d'une mine vaut <const>15</const>. Chaque mine possédée et active augmente le revenu de son propriétaire de <const>4</const>.</li>
                    </ul>
                </div>
                <!-- END -->

                <!-- BEGIN level4 -->
                <br/>
                <p><strong>Bâtiments</strong></p>
                <p>
                    Les joueurs peuvent construire des bâtiments avec l'action <action>BUILD</action> pour augmenter leur puissance économique ou militaire. Il n'est possible de construire que sur une case possédée et active.<br/>
                </p>
                <div style="color: #7cc576;
                    background-color: rgba(124, 197, 118,.1);
                    padding: 2px;">
                    <p>
                        Les joueurs peuvent construire deux types de batiment : la <action>MINE</action> et la <action>TOUR</action>.
                    </p>
                </div>
                <ul style="padding-top: 0; padding-bottom:0;">
                    <li><img src="http://file.azke.fr/COIF/mine_neutre.png" style="height:20px;"/>
                        <action>MINE</action>: les mines produisent de l'or chaque tour et ne peuvent être construites qu'à certains endroits spécifiques. Le coût de construction d'une mine vaut <const>15</const>. Chaque mine possédée et active augmente le revenu de son propriétaire de <const>4</const>.</li>
                    <li style="color: #7cc576;
                background-color: rgba(124, 197, 118,.1);
                padding: 2px;"><img src="http://file.azke.fr/COIF/tower_red.png" style="height:20px;"/>
                        <action>TOWER</action>: les tours protègent les cases possedées et directement adjacentes (en haut, en bas, à gauche et à droite, mais pas en diagonale). Une case protégée par une tour ne peut être atteinte par une unité ennemie, à moins qu'elle soit de niveau <const>3</const>. De même, une tour ne peut être détruite que par une unité de niveau <const>3</const>. Une tour coûte 15 d'or à construire et ne peut pas être construite sur un emplacement de mine.
                        <div style="margin-left:auto; margin-right:auto; width:350px;">
                            <img src="https://www.codingame.com/servlet/mfileservlet?id=28956841128576" alt="tower-protection" style="margin-left:auto; margin-right:auto; width:350px;" /><br/>
                            <p>
                                <i>La tour possédée par le joueur rouge protège les cases adjacentes marquées par une croix noire. Les cases en diagonale <strong>ne sont pas</strong> protégées. De plus, la case bleue à droite de la tour n'est pas protégée non plus car ce n'est pas une case rouge.</i>
                            </p>
                        </div>
                    </li>
                </ul>
                <!-- END -->
                <!-- BEGIN level5 -->
                <br/>
                <p><strong>Bâtiments</strong></p>
                <p>
                    Les joueurs peuvent construire des bâtiments avec l'action <action>BUILD</action> pour augmenter leur puissance économique ou militaire. Il n'est possible de construire que sur une case possédée et active.<br/>
                </p>
                <p>
                    Les joueurs peuvent construire deux types de batiment : la <action>MINE</action> et la <action>TOUR</action>.
                </p>
                <ul style="padding-top: 0; padding-bottom:0;">
                    <li><img src="http://file.azke.fr/COIF/mine_neutre.png" style="height:20px;"/>
                        <action>MINE</action>: les mines produisent de l'or chaque tour et ne peuvent être construites qu'à certains endroits spécifiques. Le coût de construction d'une mine vaut <const>15</const>. Chaque mine possédée et active augmente le revenu de son propriétaire de <const>4</const>.</li>
                    <li><img src="http://file.azke.fr/COIF/tower_red.png" style="height:20px;"/>
                        <action>TOWER</action>: les tours protègent les cases possedées et directement adjacentes (en haut, en bas, à gauche et à droite, mais pas en diagonale). Une case protégée par une tour ne peut être atteinte par une unité ennemie, à moins qu'elle soit de niveau <const>3</const>. De même, une tour ne peut être détruite que par une unité de niveau <const>3</const>. Une tour coûte 15 d'or à construire et ne peut pas être construite sur un emplacement de mine.
                        <div style="margin-left:auto; margin-right:auto; width:350px;">
                            <img src="https://www.codingame.com/servlet/mfileservlet?id=28956841128576" alt="tower-protection" style="margin-left:auto; margin-right:auto; width:350px;" /><br/>
                            <p>
                                <i>La tour possédée par le joueur rouge protège les cases adjacentes marquées par une croix noire. Les cases en diagonale <strong>ne sont pas</strong> protégées. De plus, la case bleue à droite de la tour n'est pas protégée non plus car ce n'est pas une case rouge.</i>
                            </p>
                        </div>
                    </li>
                </ul>
                <!-- END -->
                <!-- BEGIN level3 -->
                <div style="color: #7cc576;
                    background-color: rgba(124, 197, 118,.1);
                    padding: 2px;">
                    <p>
                        Si un bâtiment est sur une case inactive, il n'est pas détruit ; il est seulement inactif.
                    </p>
                </div>
                <!-- END -->
                <!-- BEGIN level4 level5 -->
                <p>
                    Si un bâtiment est sur une case inactive, il n'est pas détruit ; il est seulement inactif.
                </p>
                <!-- END -->

                <br/>
                <p><strong>Armées</strong></p>
                <p>
                    Les unités d'armée peuvent se déplacer pour capturer des cases et pour détruire les bâtiments et unités adverses.
                </p>
                <!-- BEGIN level1 -->
                <p>
                    Les unités de niveau 1 peuvent être entraînées en utilisant la commande <action>TRAIN 1 x y</action>. La case cible <const>(x,y)</const> doit être une des cases du territoire du joueur ou de son voisinage direct (bordure). Leur coût d'entraînement est de <const>10</const>.
                </p>
                <p>
                    Dans cette ligue <strong>seulement</strong>, les unités de niveau 1 peuvent détruire d'autres unités de niveau 1 en se déplaçant sur leur position. Seule l'unité attaquante survit.
                </p>
                <!-- END -->
                <!-- BEGIN level2 -->
                <div style="color: #7cc576;
                    background-color: rgba(124, 197, 118,.1);
                    padding: 2px;">
                    <p>
                        Des unités d'armée de différents niveaux (<const>1</const>, <const>2</const> ou <const>3</const>) peuvent être entraînées en utilisant la commande <action>TRAIN level x y</action>. La case cible <const>(x,y)</const> doit être une des cases du territoire du joueur ou de son voisinage direct (bordure).
                    </p>
                    <p>
                        Une unité ne peut détruire que des unités de niveau inférieur, excepté les unités de niveau 3 qui peuvent détruire toutes les unités.
                    </p>
                </div>
                <!-- END -->
                <!-- BEGIN level3 level4 level5 -->
                <p>
                    Des unités d'armée de différents niveaux (<const>1</const>, <const>2</const> ou <const>3</const>) peuvent être entraînées en utilisant la commande <action>TRAIN level x y</action>. La case cible <const>(x,y)</const> doit être une des cases du territoire du joueur ou de son voisinage direct (bordure).
                </p>
                <p>
                    Une unité ne peut détruire que des unités de niveau inférieur, excepté les unités de niveau 3 qui peuvent détruire toutes les unités.
                </p>
                <!-- END -->
                <!-- BEGIN level2 -->
                <div style="color: #7cc576;
                    background-color: rgba(124, 197, 118,.1);
                    padding: 2px;">
                    <p>
                        Toutes les unités peuvent détruire tous les bâtiments.
                    </p>
                </div>
                <!-- END -->
                <!-- BEGIN level3 -->
                <p>
                    Toutes les unités peuvent détruire tous les bâtiments.
                </p>
                <!-- END -->
                <!-- BEGIN level4 -->
                <div style="color: #7cc576;
                    background-color: rgba(124, 197, 118,.1);
                    padding: 2px;">
                    <p>
                        Les tours ne peuvent être détruites que par des unités de niveau 3.
                    </p>
                    <p>
                        Seules les unités de niveau 3 peuvent être entraînées ou se déplacer sur une case protégée par une tour adverse.
                    </p>
                </div>
                <!-- END -->
                <!-- BEGIN level5 -->
                <p>
                    Les tours ne peuvent être détruites que par des unités de niveau 3.
                </p>
                <p>
                    Seules les unités de niveau 3 peuvent être entraînées ou se déplacer sur une case protégée par une tour adverse.
                </p>
                <!-- END -->
                <p>
                    Chaque unité ne peut se déplacer que d'une seule case par tour, à l'aide de la commande <action>MOVE id x y</action>.
                </p>
                <p> 
                    Il n'est pas possible d'entraîner ou de déplacer une unité sur une case avec une unité ou un bâtiment allié.
                </p>
                <p>
                    Une unité ne peut pas se déplacer le tour où elle est entraînée.
                </p>
                <p>
                    En utilisant la commande <action>MOVE id x y</action>, si la distance entre l'unité et la case cible <const>(x,y)</const> est supérieure à <const>1</const>, l'unité se déplace vers sa cible.
                </p>
                <p>
                    Pour entraîner ou déplacer une unité sur une case avec une unité ou un bâtiment adverse, l'unité attaquante doit être en mesure de détruire l'unité défendante ou le bâtiment. Si c'est le cas, l'unité attaquante survit toujours. Dans le cas contraire, l'action est invalide : rien ne se passe.
                </p>
                <p>
                    Si une unité se retrouve sur une case inactive au début d'un tour, elle est immédiatement détruite.
                </p>
                 <!-- BEGIN level1 -->
                <table style="text-align:center; width: 100%; border-spacing: 10px; border-collapse: separate;">
                    <tr>
                        <th>Niveau</th>
                        <td>1</td>
                    </tr>
                    <tr>
                        <th>Coût d'entraînement</th>
                        <td>10</td>
                    </tr>
                    <tr>
                        <th>Coût d'entretien</th>
                        <td>1</td>
                    </tr>
                    <tr>
                        <th>Peut détruire les unités</th>
                        <td>1</td>
                    </tr>
                    <tr>
                        <th>Peut détruire</th>
                        <td>
                            QG
                        </td>
                    </tr>
                </table>
                <!-- END -->
                <!-- BEGIN level2 -->
                <table style="text-align:center; width: 100%; border-spacing: 10px; border-collapse: separate; color: #7cc576;
                background-color: rgba(124, 197, 118,.1);
                padding: 2px;">
                    <tr>
                        <th>Niveau</th>
                        <td>1</td>
                        <td>2</td>
                        <td>3</td>
                    </tr>
                    <tr>
                        <th>Coût d'entraînement</th>
                        <td>10</td>
                        <td>20</td>
                        <td>30</td>
                    </tr>
                    <tr>
                        <th>Coût d'entretien</th>
                        <td>1</td>
                        <td>4</td>
                        <td>20</td>
                    </tr>
                    <tr>
                        <th>Peut détruire les unités</th>
                        <td>-</td>
                        <td>1</td>
                        <td>1, 2, 3</td>
                    </tr>
                    <tr>
                        <th>Peut détruire</th>
                        <td>
                            QG
                        </td>
                        <td>
                            QG
                        </td>
                        <td>
                            QG
                        </td>
                    </tr>
                </table>
                <!-- END -->
                <!-- BEGIN level3 level4 level5 -->
                <table style="text-align:center; width: 100%; border-spacing: 10px; border-collapse: separate;">
                    <tr>
                        <th>Niveau</th>
                        <td>1</td>
                        <td>2</td>
                        <td>3</td>
                    </tr>
                    <tr>
                        <th>Coût d'entraînement</th>
                        <td>10</td>
                        <td>20</td>
                        <td>30</td>
                    </tr>
                    <tr>
                        <th>Coût d'entretien</th>
                        <td>1</td>
                        <td>4</td>
                        <td>20</td>
                    </tr>
                    <tr>
                        <th>Peut détruire les unités</th>
                        <td>-</td>
                        <td>1</td>
                        <td>1, 2, 3</td>
                    </tr>
                    <!-- BEGIN level3 -->
                    <tr style="color: #7cc576;
                background-color: rgba(124, 197, 118,.1);
                padding: 2px;">
                        <th>Peut détruire</th>
                        <td>
                            Mines
                            <br/>
                            QG
                        </td>
                        <td>
                            Mines
                            <br/>
                            QG
                        </td>
                        <td>
                            Mines
                            <br/>
                            QG
                        </td>
                    </tr>
                    <!-- END -->
                    <!-- BEGIN level4 level5 -->
                    <tr>
                        <th>Peut détruire</th>
                        <td>
                            Mines
                            <br/>
                            QG
                        </td>
                        <td>
                            Mines
                            <br/>
                            QG
                        </td>
                        <!-- BEGIN level4 -->
                        <td style="color: #7cc576;
                background-color: rgba(124, 197, 118,.1);
                padding: 2px;">
                            Mines
                            <br/>
                            Tours
                            <br/>
                            QG
                        </td>
                        <!-- END -->
                    <!-- BEGIN level5 -->
                        <td>
                            Mines
                            <br/>
                            Tours
                            <br/>
                            QG
                        </td>
                        <!-- END -->
                    </tr>
                    <!-- END -->
                </table>
                <!-- END -->


                 </br>
                <p><strong>Ordre des actions</strong></p>
                <p>
                    Les actions sont effectuées séquentiellement. Les actions invalides sont ignorées.
                </p>
                <div style="margin-left:auto; margin-right:auto; width:500px;">
                        <img src="https://www.codingame.com/servlet/mfileservlet?id=28959325237970" alt="action-sequence-diagram" style="margin-left:auto; margin-right:auto; width:550px;" />
                </div>
            </div>

            <!-- Victory conditions -->
            <div class="statement-victory-conditions">
                <div class="icon victory"></div>
                <div class="blk">
                    <div class="title">Conditions de victoire</div>
                    <div class="text">
                        <ul style="padding-bottom: 0;">
                            <li>Détruire le quartier général adverse.</li>
                            <li>Après <const>100</const> tours, vous avez plus de puissance militaire que votre adversaire. La puissance militaire est la somme du coût de toutes vos unités + votre quantité d'or.</li>
                        </ul>
                    </div>
                </div>
            </div>

            <!-- Lose conditions -->
            <div class="statement-lose-conditions">
                <div class="icon lose"></div>
                <div class="blk">
                    <div class="title">Conditions de défaite</div>
                    <div class="text">
                        <ul style="padding-bottom: 0;">
                            <li>Votre programme ne répond pas dans le temps imparti.</li>
                            <li>Votre programme répond avec une sortie non reconnue.</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- EXPERT RULES -->
    <!-- BEGIN level4 level5 -->
    <div class="statement-section statement-expertrules">
        <h1>
            <span class="icon icon-expertrules">&nbsp;</span>
            <span>Détails des règles</span>
        </h1>

        <div class="statement-expert-rules-content">
            Le code source du jeu se trouve ici : <a target="_blank" href="https://github.com/Azkellas/a-code-of-ice-and-fire">https://github.com/Azkellas/a-code-of-ice-and-fire</a>.
            <ul style="padding-top: 0; padding-bottom:0;">
                <li>Il y a entre <const>6</const> et <const>X</const> emplacements de mine où X est <const>15%</const> du nombre de cases non vides.</li>
                <li>Un emplacement de mine est toujours présent sur la case directement à droite (resp. gauche) du QG rouge (resp. bleu).</li>
                <li>Les cases à distance 1 autour du quartier général (incluant la diagonale) ne sont jamais des cases vides.</li>
                <li> Le joueur bleu possède toujours la case <const>(11, 10)</const> au début de la partie.</li>
            </ul>
        </div>
    </div>
    <!-- END -->

    <!-- PROTOCOL -->
    <div class="statement-section statement-protocol">
        <h1>
            <span class="icon icon-protocol">&nbsp;</span>
            <span>Protocole du jeu</span>
        </h1>
        <!-- Protocol block -->
        <div class="blk">
            <div class="title">Entrée d'initialisation</div>
            <div class="text">
                <p><span class="statement-lineno">Ligne 1: </span>un entier <var>numberMineSpots</var>: le nombre d'emplacement de mines sur la carte.
                    <!-- BEGIN level1 level2 -->
                    Les emplacements de mines seront utilisés à partir de la ligue Bois 1.
                    <!-- END -->
                </p>
                <span class="statement-lineno">Prochaines <var>numberMineSpots</var> lignes:</span> deux entiers
                <ul style="padding-top: 0; padding-bottom:0;">
                    <li><var>x</var> et <var>y</var>: coordonnées de l'emplacement de mine.</li>
                </ul>
            </div>

            <div class="title">Entrée pour un tour de jeu</div>
            <div class="text">
                <p><span class="statement-lineno">Ligne 1:</span> un entier <var>gold</var>, la quantité d'or du joueur.</p>
                <p><span class="statement-lineno">Ligne 2:</span> un entier <var>income</var>: le revenu du joueur.</p>
                <p><span class="statement-lineno">Ligne 3:</span> un entier <var>opponentGold</var>: la quantité d'or de l'adversaire.</p>
                <p><span class="statement-lineno">Ligne 4:</span><var>opponentIncome</var>: le revenu de l'adversaire.</p>

                <p><span class="statement-lineno">Prochaines <const>12</const> lignes:</span> <const>12</const> caractères, un pour chaque case:
                <ul style="padding-top: 0; padding-bottom:0;">
                    <li><const>#</const>: néant</li>
                    <li><const>.</const>: neutre</li>
                    <li><const>O</const>: possédée par le joueur et active</li>
                    <li><const>o</const>: possédée par le joueur et inactive</li>
                    <li><const>X</const>: possédée par l'adversaire et active</li>
                    <li><const>x</const>: possédée par l'adversaire et inactive</li>
                </ul>
                <p><span class="statement-lineno">Prochaine ligne:</span> <var>buildingCount</var>: la quantité de bâtiments sur la carte.</p>
                <span class="statement-lineno">Prochaines <var>buildingCount</var> lignes:</span> quatre entiers
                    <ul style="padding-top: 0; padding-bottom:0;">
                        <li><var>owner</var> (propriétaire)
                            <ul style="padding-top: 0; padding-bottom:0;">
                                <li style="list-style-type: circle;"><const>0</const>: le joueur</li>
                                <li style="list-style-type: circle;"><const>1</const>: l'adversaire</li>
                            </ul>
                        </li>
                        <li><var>buildingType</var>, le type de bâtiment
                            <ul style="padding-top: 0; padding-bottom:0;">
                                <li style="list-style-type: circle;"><const>0</const>: QG</li>
                                
                                <!-- BEGIN level3 -->
                                <li style="list-style-type: circle;"><const>1</const>: Mine</li>
                                <!-- END -->

                                <!-- BEGIN level4 level5 -->
                                <li style="list-style-type: circle;"><const>1</const>: Mine</li>
                                <li style="list-style-type: circle;"><const>2</const>: Tour</li>
                                <!-- END -->
                            </ul>
                        </li>
                        <li><var>x</var> et <var>y</var>, les coordonnées du bâtiment.</li>
                    </ul>
                <p><span class="statement-lineno">Prochaine ligne:</span> <var>unitCount</var>, la quantité d'unités sur la carte.</p>
                <span class="statement-lineno">Prochaines <var>unitCount</var> lignes:</span> cinq entiers
                    <ul style="padding-top: 0; padding-bottom:0;">
                        <li><var>owner</var>
                            <ul style="padding-top: 0; padding-bottom:0;">
                                <li style="list-style-type: circle;"><const>0</const>: le joueur</li>
                                <li style="list-style-type: circle;"><const>1</const>: l'adversaire</li>
                            </ul>
                        </li>
                        <li><var>unitId</var>: l'identifiant de l'unité.</li>
                        <!-- BEGIN level1 -->
                        <li><var>level</var>: toujours <const>1</const> (seulement dans cette ligue).</li>
                        <!-- END -->
                        <!-- BEGIN level2 level3 level4 level5 -->
                        <li><var>level</var>: <const>1</const>, <const>2</const> ou <const>3</const>.</li>
                        <!-- END -->
                        <li><var>x</var> et <var>y</var>: coordonnées de l'unité.</li>
                    </ul>
            </div>
        </div>

        <!-- Protocol block -->
        <div class="blk">
        <div class="title">Sortie</div>
            <div class="text">
                <span class="statement-lineno">Une ligne étant la combinaison de ces commandes séparées par <action>;</action></span>
                <ul style="padding-top: 0; padding-bottom:0;">
                    <li><action>MOVE id x y</action></li>
                    <!-- BEGIN level1 -->
                    <li><action>TRAIN level x y</action> où level vaut <const>1</const></li>
                    <!-- END -->
                    <!-- BEGIN level2 level3 level4 level5 -->
                    <li><action>TRAIN level x y</action> où level vaut <const>1</const>, <const>2</const> ou <const>3</const></li>
                    <!-- END -->
                    <!-- BEGIN level3 -->
                    <li><action>BUILD type-batiment x y</action> où le type-batiment est uniquement <action>MINE</action>.</li>
                    <!-- END -->
                    <!-- BEGIN level4 level5 -->
                    <li><action>BUILD type-batiment x y</action> où le type-baiment est soit <action>MINE</action> ou <action>TOWER</action>.</li>
                    <!-- END -->
                    <li><action>WAIT</action> pour ne rien faire</li>
                </ul>
                <p>
                    Vous pouvez ajouter un message à afficher dans le viewer en utilisant la commande <action>MSG mon message</action>.
                </p>
                <!-- BEGIN level1 level2 -->
                <span class="statement-lineno">Exemple</span>: "MOVE 1 2 3; TRAIN 3 3 3; MOVE 2 3 1; MSG Team Ice"<br>
                <!-- END -->
                <!-- BEGIN level3 level4 level5 -->
                <span class="statement-lineno">Exemple</span>: "MOVE 1 2 3; TRAIN 3 3 3; BUILD MINE 0 1; MSG Team Ice"<br>
                <!-- END -->
                <br>
            </div>
        </div>
    
        <!-- Protocol block -->
        <div class="blk">
            <div class="title">Contraintes</div>
            Temps de réponse pour un tour de jeu ≤ <const>50ms</const>.
            <br />
            Temps de réponse pour le premier tour ≤ <const>1000ms</const>.
        </div>
    </div>
</div>

<!-- BEGIN level1 level2 level3 -->
  <div style="color: #7cc576;
      background-color: rgba(124, 197, 118,.1);
      padding: 20px;
      margin-top: 10px;
      text-align: left;">
    <div style="text-align: center; margin-bottom: 6px">
      <img src="//cdn.codingame.com/smash-the-code/statement/league_wood_04.png" />
    </div>
    <p style="text-align: center; font-weight: 700; margin-bottom: 6px;">
      Qu'est-ce qui vous attend dans les ligues supérieures ?
    </p>
       Voici les règles supplémentaires à débloquer dans les ligues supérieures :
      <ul style="margin-top: 0;padding-bottom: 0;" class="statement-next-rules">
        <!-- BEGIN level1 -->
        <li>En ligue Bois 2, vous pouvez entraîner des unités de niveau 2 et 3.</li>
        <!-- END -->
        <!-- BEGIN level1 level2 -->
        <li>En ligue Bois 1, vous pouvez construire des mines.</li>
        <!-- END -->
        <!-- BEGIN level1 level2 level3 -->
        <li>En ligue Bronze, vous pouvez construire des tours.</li>
        <!-- END -->
      </ul>
  </div>
  <!-- END -->
