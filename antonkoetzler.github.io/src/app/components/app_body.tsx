import '../../app/css/app_body.css';
import me from '../../assets/images/me.jpg';

const headerFontClasses = 'medium-font-size bold-italic';

const AppBody = () => {
  return (
    <main id='app-body'>
      <Me />
      <IntroductionSection />
    </main>
  );
};

const Me = () => {
  return <img src={me} alt='me' id='app-body-me' />;
};

const IntroductionSection = () => {
  return (
    <div className='app-bar-section'>
      <p className={headerFontClasses}>Fun facts about me</p>
      <ul>
        <li>Frontend software engineer specializing in Flutter & React;</li>
        <li>BSc in Computer Science from the University of Lethbridge;</li>
        <li>Living in Florianópolis, Brazil 🌴;</li>
        <li>Born in Canada, half-Canadian 🍁 & half-Brazilian 🏖️;</li>
        <li>"An idiot admires complexity, a genius admires simplicity.".</li>
      </ul>
    </div>
  );
};

export default AppBody;