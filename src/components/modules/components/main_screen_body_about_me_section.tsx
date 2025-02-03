import { Card, CardContent, CardTitle } from '@/components/ui/card';
import { useTranslation } from 'react-i18next';

function MainScreenBodyAboutMeSection() {
  const { t } = useTranslation();

  return (
    <Card>
      <CardTitle>{t('aboutMeTitle')}</CardTitle>
      <CardContent>
        <p>Okay now what</p>
      </CardContent>
    </Card>
  );
}

export default MainScreenBodyAboutMeSection;