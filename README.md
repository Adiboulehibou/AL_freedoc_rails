# AL_freedoc_rails
FOLLOW THE INSTRUCTION TO TEST :
- bundle install
- rails db:migrate
- rails db:seed
- rails c :
      - Faire les tests nécessaires (tp Doctor.all, tp Patient.all, tp JoinTableDoctorSpecialty.all...)
      -FOR 1-N LINK : 
          > a = Doctor.new
          #=> Un doctor pas encore sauvegardé

          > a.city
          #=> il doit te renvoyer nil. S'il te renvoie une erreur, le lien est mal fait !

          > u = City.first
          #=> un superbe user. S'il n'y en a pas encore, crées-en un.

          > a.city = u
          #=> A nouveau, s'il te renvoie une erreur, le lien est mal fait !
          
          > a.save
          #=> COMMIT. S'il te renvoie une erreur, tu as mal suivi ce tuto

          > Doctor.last.city.doctors #=> Récupère les articles du user lié au dernier article créé en base (celui que tu viens de créer)
          #=> Devrait te renvoyer un array qui contient l'article que tu viens de créer. Sinon c'est que le lien est mal fait.

       - FOR N-N LINK :
          >d = Doctor.create
          >p = Patient.create
          >a = Appointment.create(doctor: d, patient: p)
          #=> je crée une instance de chaque objet

          >a.doctor
          #=> on devrait obtenir en retour le docteur "d" créé plus haut. Sinon c'est qu'on a fait une erreur

          >a.patient
          #=> on devrait obtenir en retour le patient "p" créé plus haut. Sinon c'est qu'on a fait une erreur

          >d.patients
          #=> on devrait obtenir en retour un array contenant le patient "p" créé plus haut. Sinon c'est qu'on a fait une erreur

          >p.doctors
          #=> on devrait obtenir en retour un array contenant le doctor "d" créé plus haut. Sinon c'est qu'on a fait une erreur
