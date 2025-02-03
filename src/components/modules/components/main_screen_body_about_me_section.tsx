import { Card, CardContent, CardTitle } from '@/components/ui/card';
import { useTranslation } from 'react-i18next';

function MainScreenBodyAboutMeSection() {
  const { t } = useTranslation();

  return (
    <Card>
      <CardTitle>{t('aboutMeTitle')}</CardTitle>
      <CardContent>
        OKay now what
      </CardContent>
    </Card>
  );
}

export default MainScreenBodyAboutMeSection;