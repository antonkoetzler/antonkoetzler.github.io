// Get the language of the browser. If portuguese, display portuguese, if not, english.
const isPortuguese = (navigator.language || navigator.userLanguage).includes('pt');

// Header
const headerResumeButton = document.getElementById('header-resume-button');
headerResumeButton.onclick = () => {
  window.location.href = isPortuguese
    ? 'https://drive.google.com/uc?export=download&id=1FupfLoFd-2Fbp_vbF6YJ8aC9eKrJv8zS'
    : 'https://drive.google.com/uc?export=download&id=14JPBVKNYNMMUyRwi0fXM-LW-X7w0n4HI'
};

// About Me
const aboutMeTitle = document.getElementById('about-me-title');
const aboutMeFact1 = document.getElementById('about-me-fact-1');
const aboutMeFact2 = document.getElementById('about-me-fact-2');
const aboutMeFact3 = document.getElementById('about-me-fact-3');
const aboutMeFact4 = document.getElementById('about-me-fact-4');
const aboutMeFact5 = document.getElementById('about-me-fact-5');
aboutMeTitle.textContent = isPortuguese ? 'Sobre Mim' : 'About Me';
aboutMeFact1.textContent = isPortuguese
  ? 'Desenvolvedor front-end especializando em Flutter e React;'
  : 'Frontend software engineer specializing in Flutter & React;';
aboutMeFact2.textContent = isPortuguese
  ? 'Curso superior em Ciências Informáticas pela Universidade de Lethbridge;'
  : 'BSc in Computer Science from the University of Lethbridge;';
aboutMeFact3.textContent = isPortuguese
  ? 'Morando em Florianópolis, Santa Catarina, Brasil 🌴;'
  : 'Living in Florianópolis, Brazil 🌴;';
aboutMeFact4.textContent = isPortuguese
  ? 'Nascido no Canadá, meio-Canadiano 🍁 e meio-Brasileiro 🏖️;'
  : 'Born in Canada, half-Canadian 🍁 &amp half-Brazilian 🏖️;';
aboutMeFact5.textContent = isPortuguese
  ? '"Um idiota admira a complexidade, um génio admira a simplicidade".'
  : '"An idiot admires complexity, a genius admires simplicity.".';

// My Toolbox
const myToolboxTitle = document.getElementById('my-toolbox-title');
myToolboxTitle.textContent = isPortuguese ? 'Minhas Ferramentas' : 'My Toolbox';

// Professional Experience
const professionalExperienceTitle = document.getElementById('professional-experience-title');
const professionalExperienceDoutorIeDates = document.getElementById('professional-experience-doutor-ie-dates');
const professionalExperienceDoutorIeJobTitle = document.getElementById('professional-experience-doutor-ie-job-title');
professionalExperienceTitle.textContent = isPortuguese ? 'Experiência Profissional' : 'Professional Experience';
professionalExperienceDoutorIeDates.textContent = isPortuguese ? 'Novembro 2023 - Presente' : 'November 2023 - Present';
professionalExperienceDoutorIeJobTitle.textContent = isPortuguese ? 'Desenvolvedor Flutter junior' : 'Junior Flutter developer';

// Contact Information
const contactInformationTitle = document.getElementById('contact-information-title');
const contactInformationPhoneNumberTitle = document.getElementById('contact-information-phone-number-title');
contactInformationTitle.textContent = isPortuguese ? 'Informações de Contato' : 'Contact Information';
contactInformationPhoneNumberTitle.textContent = `${isPortuguese ? 'Telefone' : 'Phone number'}:`;

// Projects
const projectsTitle = document.getElementById('projects-title');
const projectsMyoroFlutterLibraryFact1 = document.getElementById('projects-myoro-flutter-library-fact-1');
const projectsMyoroFlutterLibraryFact2 = document.getElementById('projects-myoro-flutter-library-fact-2');
const projectsMyoroFlutterLibraryFact3 = document.getElementById('projects-myoro-flutter-library-fact-3');
const projectsMyoroFlutterLibraryFact4 = document.getElementById('projects-myoro-flutter-library-fact-4');
const projectsMyoroFitnessFact1 = document.getElementById('projects-myoro-fitness-fact-1');
const projectsMyoroFitnessFact2 = document.getElementById('projects-myoro-fitness-fact-2');
const projectsMyoroFitnessFact3 = document.getElementById('projects-myoro-fitness-fact-3');
const projectsMyoroFitnessFact4 = document.getElementById('projects-myoro-fitness-fact-4');
projectsTitle.textContent = isPortuguese ? 'Projetos' : 'Projects';
projectsMyoroFlutterLibraryFact1.textContent = isPortuguese
  ? 'Meu launchpad para Flutter;'
  : 'My Flutter launchpad;';
projectsMyoroFlutterLibraryFact2.textContent = isPortuguese
  ? 'Lida com todo o boilerplate de criar de um novo projeto em Flutter;'
  : 'Handles all of the boilerplate creating a new Flutter project;';
projectsMyoroFlutterLibraryFact3.textContent = isPortuguese
  ? 'Esquema de design incluído com cores, tipografia, e widgets;'
  : 'Included design scheme with colors, typography, &amp widgets;';
projectsMyoroFlutterLibraryFact4.textContent = isPortuguese
  ? 'Contém: Widgets, arquivos commons (abstracts, enums, extensions, helpers, etc), & inicialização de um banco de dados em SQLite local.'
  : 'Takes care of: Widgets, common files (abstracts, enums, extensions, helpers, etc), & local SQLite initialization.';
projectsMyoroFitnessFact1.textContent = isPortuguese
  ? 'Meu projeto de paixão 💓;'
  : 'My passion project 💓;';
projectsMyoroFitnessFact2.textContent = isPortuguese
  ? 'Um aplicativo gamificado de monitoramento de condicionamento físico;'
  : 'A gamified fitness tracking application;';
projectsMyoroFitnessFact3.textContent = isPortuguese
  ? 'Rastreia alimentação e exercícios;'
  : 'Tracks food &amp exercise;';
projectsMyoroFitnessFact4.textContent = isPortuguese
  ? 'Uma funcionalidade de sequência para que o usuário fique motivado para continuar rastreando;'
  : 'A streak functionality so the user stays motivated to keep tracking;';