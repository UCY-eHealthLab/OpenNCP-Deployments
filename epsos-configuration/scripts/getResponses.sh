grep -oP "(?<=href=\").*(\")" services/at-services.xml | cut -d\" -f1 | xargs wget -O responses/at-res.xml
grep -oP "(?<=href=\").*(\")" services/fi-services.xml | cut -d\" -f1 | xargs wget -O responses/fi-res.xml
grep -oP "(?<=href=\").*(\")" services/pt-services.xml | cut -d\" -f1 | xargs wget -O responses/pt-res.xml
grep -oP "(?<=href=\").*(\")" services/mt-services.xml | cut -d\" -f1 | xargs wget -O responses/mt-res.xml
grep -oP "(?<=href=\").*(\")" services/nl-services.xml | cut -d\" -f1 | xargs wget -O responses/nl-res.xml
grep -oP "(?<=href=\").*(\")" services/es-services.xml | cut -d\" -f1 | xargs wget -O responses/es-res.xml
grep -oP "(?<=href=\").*(\")" services/ee-services.xml | cut -d\" -f1 | xargs wget -O responses/ee-res.xml
grep -oP "(?<=href=\").*(\")" services/it-services.xml | cut -d\" -f1 | xargs wget -O responses/it-res.xml
grep -oP "(?<=href=\").*(\")" services/hr-services.xml | cut -d\" -f1 | xargs wget -O responses/hr-res.xml
grep -oP "(?<=href=\").*(\")" services/cz-services.xml | cut -d\" -f1 | xargs wget -O responses/cz-res.xml
grep -oP "(?<=href=\").*(\")" services/gr-services.xml | cut -d\" -f1 | xargs wget -O responses/gr-res.xml
grep -oP "(?<=href=\").*(\")" services/lu-services.xml | cut -d\" -f1 | xargs wget -O responses/lu-res.xml
grep -oP "(?<=href=\").*(\")" services/pl-services.xml | cut -d\" -f1 | xargs wget -O responses/pl-res.xml
grep -oP "(?<=href=\").*(\")" services/se-services.xml | cut -d\" -f1 | xargs wget -O responses/se-res.xml
grep -oP "(?<=href=\").*(\")" services/cy-services.xml | cut -d\" -f1 | xargs wget -O responses/cy-res.xml
grep -oP "(?<=href=\").*(\")" services/ie-services.xml | cut -d\" -f1 | xargs wget -O responses/ie-res.xml
grep -oP "(?<=href=\").*(\")" services/be-services.xml | cut -d\" -f1 | xargs wget -O responses/be-res.xml
grep -oP "(?<=href=\").*(\")" services/ch-services.xml | cut -d\" -f1 | xargs wget -O responses/ch-res.xml
