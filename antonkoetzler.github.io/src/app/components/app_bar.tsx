import '../../app/css/app_bar.css';
import Button from '../lib/components/button';
import Divider from '../lib/components/divider';
import DirectionEnum from '../lib/enums/direction_enum';

const AppBar = () => {
  return (
    <header id='appBar'>
      <ResumeButton />
      <Title />
      <GithubButton />
    </header>
  );
};

const ResumeButton = () => {
  return (
    <div className='app-bar-button'>
      <Button text='Résumé' />
      <Divider direction={DirectionEnum.vertical} />
    </div>
  );
};

const Title = () => {
  return (
    <p className='large-font-size bold ellipsize-text' id='app-bar-title'></p>
  );
};

const GithubButton = () => {
  return (
    <div className='app-bar-button'>
      <Divider direction={DirectionEnum.vertical} />
      <Button text='GitHub' />
    </div>
  );
};

export default AppBar;