��    y      �  �   �      8
  7   9
  =   q
  C   �
  I   �
  A   =  6     /   �  -   �  "     )   7  H   a  Q   �  C   �  ,   @  ,   m  +   �  /   �  >   �  Q   5  3   �  )   �  /   �  8        N     \     e  `   w     �  	   �  	   �  :        ?  *   Y  	   �  	   �     �     �  @   �  :     #   G  :   k  +   �  F   �  <     -   V  -   �  !   �  >   �  �     =   �  �   �  O   �  K   �  q   !  )   �  (   �  Y   �  g   @  &   �     �     �     �     
      &     G  7   f  6   �  +   �  )     /   +  6   [  F   �  8   �             0   <  9   m  N   �     �     �       6     c   J     �     �  &   �     �       $   &     K  +   \     �     �     �     �     �     �       .     8   >  >   w  .   �     �     �  4        ;     B     a  &   y     �     �  $   �  +   �  3     #   :     ^     x  '   �  F   �  )   �  �  "  @   !  C   ^!  D   �!  R   �!  8   :"  8   s"  9   �"  /   �"  "   #  )   9#  H   c#  Z   �#  L   $  /   T$  3   �$  9   �$  ,   �$  O   %  R   o%  ?   �%  -   &  2   0&  7   c&     �&     �&     �&  T   �&     '  	   1'  	   ;'  C   E'     �'  0   �'  	   �'  	   �'     �'     (  F   (  <   d(  4   �(  <   �(  :   )  J   N)  >   �)  5   �)  9   *  6   H*  F   *  �   �*  A   d+  �   �+  Z   N,  W   �,  �   -  (   �-  1   �-  \   �-  d   L.  .   �.     �.     �.  !   /  +   9/  )   e/  *   �/  7   �/  <   �/  ?   /0  A   o0  ;   �0  E   �0  R   31  H   �1     �1  !   �1  B   2  :   H2  N   �2     �2     �2     �2  E   �2  _   <3     �3     �3  .   �3  $   �3  &   4  .   B4     q4  9   �4  +   �4  5   �4  -   &5     T5     d5     �5  
   �5  7   �5  E   �5  D   %6  @   j6  
   �6     �6  E   �6  	   7  -   $7     R7  9   g7  	   �7     �7  9   �7  C   �7  R   08  4   �8     �8     �8  +   �8  O   9  +   g9     g   t   k       &   x   J       G      n   Z   s          +   5          A       
           8               	          '             W   *   f   /       M   T   <   ,   V   D       4            \                  q   %      i   #   .           p           (      R   F   =   C       ?   2               a   $   9   )       L       ;                    e   0   c   v   y       :         d   ^   _   -          Y      3   B   I                                6   `      H   "   m   h   l      @       P       Q      1   X   ]   b   w          j           U   !       o   K   r   [   7   N   E          O   S   >      u                        extend pacman operations to the AUR    --devel          consider AUR development packages upgrade    --foreign        consider already installed foreign dependencies    --ignore         ignore a package upgrade (can be used more than once)    --needed         do not reinstall already up-to-date target(s)    --noconfirm      do not prompt for any confirmation    --noedit         do not prompt to edit files    --rebuild        always rebuild package(s)    --silent         silence output    -S, -Ss, -Si, -Sw, -Su, -Qu, -Sc, -Scc    -a, --aur        only search, build or install target(s) from the AUR    -d, --download   download target(s) -- pass twice to download AUR dependencies    -e, --edit       edit target(s) PKGBUILD and view install script    -h, --help       display help information    -i, --info       view package information    -k, --check      check for AUR update(s)    -m, --makepkg    download and make target(s)    -q, --quiet      show less information for query and search    -r, --repo       only search, build or install target(s) from the repositories    -s, --search     search AUR for matching strings    -u, --update     update AUR package(s)    -v, --version    display version information    -y, --sync       download, make and install target(s)  AUR specific  general  pacman extension  pacman extension - can be used with the -S, -Ss, -Si, -Sii, -Sw, -Su, -Qu, -Sc, -Scc operations  there is nothing to do $2 [Y/n]  $2 [y/N]  $i dependency is in IgnorePkg/IgnoreGroup. Install anyway? $j and $k are in conflict $j and $k are in conflict ($i). Remove $k? $sumk MiB $summ MiB ${Qrequires[@]}: requires $@ ${binarysize[$i]} MiB ${checkaurpkgs[$i]} is in IgnorePkg/IgnoreGroup. Install anyway? ${colorW}$clonedir${reset} does not have write permission. ${colorW}$i${reset} PKGBUILD viewed ${colorW}$i${reset} build files are up-to-date -- skipping ${colorW}$i${reset} build files diff viewed ${colorW}$i${reset} is ${colorY}not present${reset} in AUR -- skipping ${colorW}$i${reset} is a ${colorY}new orphan${reset} package ${colorW}$i${reset}: ignoring package upgrade ${colorW}$j${reset} is up-to-date -- skipping ${colorW}$j${reset} script viewed ${colorW}${checkaurpkgs[$i]}${reset}: ignoring package upgrade ${colorW}${checkaurpkgs[$i]}${reset}: ignoring package upgrade (${colorR}${checkaurpkgsQver[$i]}${reset} => ${colorG}${checkaurpkgsAver[$i]}${reset}) ${colorW}${depsAname[$i]}${reset} latest revision -- fetching ${colorW}${depsAname[$i]}-${depsAver[$i]}${reset} has been flagged ${colorR}out of date${reset} on ${colorY}$(date -d "@${depsAood[$i]}" "+%Y-%m-%d")${reset} ${colorW}${depsAname[$i]}-${depsQver[$i]}${reset} is up to date -- reinstalling ${colorW}${depsAname[$i]}-${depsQver[$i]}${reset} is up to date -- skipping ${colorW}${pkgsdeps[$i]}${reset} package(s) failed to install. Check .SRCINFO for mismatching data with PKGBUILD. ${colorW}Retrieving package(s)...${reset} ${colorW}Starting AUR upgrade...${reset} ${colorW}There are ${#providers[@]} providers available for ${providersdeps[$i]}:${reset} ${colorW}clonedir${reset} or ${colorW}\$AURDEST${reset} should be set to a non volatile memory location ${colorW}editor${reset} variable unset (cached) AUR Packages  (${#deps[@]}): AUR cache directory: AUR source cache directory: All development packages sources All locally installed packages Building ${colorW}${pkgsdeps[$i]}${reset} package(s)... Checking ${colorW}${pkgsdeps[$i]}${reset} integrity... Could not open ${colorW}$i${reset} PKGBUILD Could not open ${colorW}$j${reset} script Do you want to remove ALL files from AUR cache? Do you want to remove ALL files from AUR source cache? Do you want to remove all non development files from AUR source cache? Do you want to remove all other packages from AUR cache? Download Size Enter a number (default=0): Installing ${colorW}$j${reset} cached package... Installing ${colorW}${pkgsdeps[$i]}${reset} package(s)... Installing ${colorW}${repoprovidersconflictingpkgs[@]}${reset} dependencies... Name New Version Old Version Package ${colorW}$j${reset} already available in cache Package(s) ${colorW}${aurpkgs[*]}${reset} not found in repositories, trying ${colorM}AUR${reset}... Packages to keep: Proceed with $action? Removing installed AUR dependencies... Repo Download Size: Repo Installed Size: Repo Packages (${#repodepspkgs[@]}): Sources to keep: Unresolved dependency '${colorW}$i${reset}' View $i PKGBUILD? View $i build files diff? View $j script? [ ignored ] build.lck exists in $tmpdir dependency cycle detected download failed to build ${colorW}$i${reset} package(s) failed to prepare transaction (conflicting dependencies) failed to prepare transaction (could not satisfy dependencies) failed to verify ${colorW}$i${reset} integrity installation invalid number: $nb invalid value: $nb is not between 0 and $providersnb latest looking for inter-conflicts... no results found for $i no targets specified (use -h for help) operations: options: removing all files from AUR cache... removing all files from AUR source cache... removing non development files from source cache... removing old packages from cache... resolving dependencies... target not found unresolvable package conflicts detected usage:  pacaur <operation> [options] [target(s)] -- See also pacaur(8) you cannot perform this operation as root Project-Id-Version: pacaur
POT-Creation-Date: 
PO-Revision-Date: 
Last-Translator: Tomasz "Ludvick" Niedzielski <ludvick0@gmail.com>
Language-Team: Tomasz "Ludvick" Niedzielski <ludvick0@gmail.com>
Language: pl
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Poedit 1.8.7.1
Plural-Forms: nplurals=3; plural=(n==1 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2);
X-Poedit-SourceCharset: UTF-8
X-Poedit-Basepath: .
X-Poedit-SearchPath-0: .
                     rozciąga działanie operacji pacmana na AUR    --devel          uwzględnia aktualizację pakietów devel z AUR    --foreign        uwzględnia zainstalowane już obce zależności    --ignore         pomija aktualizację pakietów -- można używać wielokrotnie    --needed         nie reinstaluje aktualnych pakietów    --noconfirm      nie wyświetla żadnych potwierdzeń    --noedit         wyłącza zapytanie o edycję plików    --rebuild        zawsze przebudowuje pakiety    --silent         puste wyjście    -S, -Ss, -Si, -Sw, -Su, -Qu, -Sc, -Scc    -a, --aur        poszukuje, instaluje lub czyści tylko pakiety z AUR    -d, --download   pobiera pakiety -- wprowadź podwójnie, by pobrać zależności z AUR    -e, --edit       edycja plików PKGBUILD oraz podgląd skryptów .install    -h, --help       wyświetla niniejszą pomoc    -i, --info       pokazuje informacje o pakietach    -k, --check      sprawdza aktualność pakietów z AUR    -m, --makepkg    pobiera i buduje pakiety    -q, --quiet      wyświetla mniej informacji przy zapytaniach i wyszukiwaniu    -r, --repo       poszukuje, instaluje lub czyści tylko pakiety z repozytoriów    -s, --search     poszukuje pasujących ciągów tekstu w AUR    -u, --update     aktualizuje pakiety z AUR    -v, --version    wyświetla informacje o wersji    -y, --sync       pobiera, buduje i instaluje pakiety  dla AUR  ogólne  rozszerzenie pacmana  rozszerzenie pacmana - można użyć z -S, -Ss, -Si, -Sii, -Sw, -Su, -Qu, -Sc, -Scc  nie ma nic do zrobienia $2 [T/n]  $2 [t/N]  zależność $i jest w IgnorePkg/IgnoreGroup. Instalować, mimo to? $j i $k konfliktują ze sobą $j i $k konfliktują ze sobą ($i). Usunąć $k? $sumk MiB $summ MiB ${Qrequires[@]}: wymaga $@ ${binarysize[$i]} MiB ${checkaurpkgs[$i]} jest w IgnorePkg/IgnoreGroup. Instalować mimo to? ${colorW}$clonedir${reset} nie posiada uprawnień do zapisu. Przejrzano plik PKGBUILD pakietu ${colorW}$i${reset} ${colorW}$i${reset} budowane pliki są aktualne -- pomijanie Przejrzano budowane pliki diff pakietu ${colorW}$i${reset} ${colorW}$i${reset} ${colorY}nie jest dostępny${reset} w AUR -- pomijanie ${colorW}$i${reset} jest ${colorY}osieroconym${reset} pakietem ${colorW}$i${reset}: ignorowanie aktualizacji pakietu ${colorW}$j${reset} jest w najnowszej wersji -- pomijanie Przejrzano skrypt .install pakietu ${colorW}$j${reset} ${colorW}${checkaurpkgs[$i]}${reset}: ignorowanie aktualizacji pakietu ${colorW}${checkaurpkgs[$i]}${reset}: ignorowanie aktualizacji pakietu (${colorR}${checkaurpkgsQver[$i]}${reset} => ${colorG}${checkaurpkgsAver[$i]}${reset}) ${colorW}${depsAname[$i]}${reset} najnowsza rewizja -- pobieranie ${colorW}${depsAname[$i]}-${depsAver[$i]}${reset} został oznaczony jako ${colorR}nieaktualny${reset} w dniu ${colorY}$(date -d "@${depsAood[$i]}" "+%Y-%m-%d")${reset} ${colorW}${depsAname[$i]}-${depsQver[$i]}${reset} jest w najnowszej wersji -- reinstalacja ${colorW}${depsAname[$i]}-${depsQver[$i]}${reset} jest w najnowszej wersji -- pomijanie Nie udało się zainstalować pakietów ${colorW}${pkgsdeps[$i]}${reset}. Przejrzyj plik .SRCINFO, by znaleźć rozbieżności z plikiem PKGBUILD. ${colorW}Pobieranie pakietów...${reset} ${colorW}Uruchamianie aktualizacji AUR...${reset} ${colorW}Dostępne są ${#providers[@]} pakiety dostarczające ${providersdeps[$i]}:${reset} ${colorW}clonedir${reset} lub ${colorW}\$AURDEST${reset} powinny być osadzone w pamięci nieulotnej Nie ustawiono zmiennej ${colorW}editor${reset} (w pamięci podręcznej) Pakiety z AUR  (${#deps[@]}): Katalog pamięci podręcznej AUR: Katalog pamięci podręcznej źródeł AUR: Wszystkie źródła pakietów rozowjowych Wszystkie, zainstalowane lokalnie, pakiety Budowanie pakietów ${colorW}${pkgsdeps[$i]}${reset}... Sprawdzanie zależności ${colorW}${pkgsdeps[$i]}${reset}... Nie można otworzyć pliku PKGBUILD pakietu ${colorW}$i${reset} Nie można otworzyć skryptu .install pakietu ${colorW}$j${reset} Chcesz usunąć WSZYSTKIE pliki z pamięci podręcznej AUR? Chcesz usunąć WSZYSTKIE pliki z pamięci podręcznej źródeł AUR? Chcesz usunąć wszystkie nierozwojowe pliki z pamięci podręcznej źródeł AUR? Chcesz usunąć wszystkie pozostałe pakiety z pamięci podręcznej AUR? Wielkość pobrania Wprowadź liczbę (domyślnie=0): Instalowanie pakietu ${colorW}$j${reset} z pamięci podręcznej... Instalowanie pakietów ${colorW}${pkgsdeps[$i]}${reset}... Instalacja zależności ${colorW}${repoprovidersconflictingpkgs[@]}${reset}... Nazwa Nowa wersja Poprzednia wersja Pakiet ${colorW}$j${reset} jest już dostępny w pamięci podręcznej Nie znaleziono ${colorW}${aurpkgs[*]}${reset} w repozytoriach; szukam w ${colorM}AUR${reset}... Zachowywane pakiety: Przejść do $action? Usuwanie zainstalowanych zależności z AUR... Wielkość pobrania z repozytoriów: Wielkość instalacji z repozytoriów: Pakiety z repozytoriów (${#repodepspkgs[@]}): Źródła do zachowania: Nierozwiązane zależności pakietu '${colorW}$i${reset}' Chcesz przejrzeć plik PKGBUILD pakietu $i? Czy chcesz przejrzeć budowane pliki diff pakietu $i? Chcesz przejrzeć skrypt .install pakietu $j? [ zignorowano ] build.lck istnieje w $tmpdir wykryto cykle zależności pobierania nie udało się zbudować pakietów ${colorW}$i${reset} nie udało się przygotować transakcji (konfliktujące zależności) nie udało się przygotować transakcji (niespełnione zależności) nie udało się zweryfikować integralności ${colorW}$i${reset} instalacji nieprawidłowa wartość: $nb nieprawidłowa wartość: $nb powinna być pomiędzy 0 i $providersnb najnowszy poszukiwanie konfliktów między pakietami... brak wyników dla $i nie podano żadnych celów (użyj -h aby otrzymać pomoc) operacje: opcje: usuwanie wszystkich plików z pamięci podręcznej AUR... usuwanie wszystkich plików z pamięci podręcznej źródeł AUR... usuwanie wszystkich nierozwojowych plików z pamięci podręcznej źródeł AUR... usuwanie starych pakietów z pamięci podręcznej... rozwiązywanie zależności... nie znaleziono celu wykryto nierozwiązywalne konflikty pakietu składnia:  pacaur <operacja> [opcje] [pakiet(y)] -- Zobacz również pacaur(8) nie możesz wykonać tej operacji jako root 