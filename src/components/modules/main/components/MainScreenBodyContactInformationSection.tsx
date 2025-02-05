import { useTranslation } from 'react-i18next';
import CopyTextButton from '@/components/ui/buttons/CopyTextButton';
import MainScreenBodySection from '@/components/modules/main/components/MainScreenBodySection';

function MainScreenBodyContactInformationSection() {
  const { t } = useTranslation();
  const email = 'antonkoetzler-faust@hotmail.com';

  return (
    <MainScreenBodySection title={t('contactInformationTitle')}>
      <div className={'flex flex-col gap-2'}>
        <ContactInformation
          formOfContactAddress={email}
          onPressFormOfContactAddress={`mailto:${email}`}
        />
        <ContactInformation
          formOfContactAddress={'+55 (48) 98818-9095'}
          onPressFormOfContactAddress={'https://wa.me/5548988189095'}
        />
      </div>
    </MainScreenBodySection>
  );
}

function ContactInformation({
  formOfContactAddress,
  onPressFormOfContactAddress,
}: {
  formOfContactAddress: string,
  onPressFormOfContactAddress: string,
}) {
  return (
    <div className={'flex flex-row gap-2'}>
      <a className={'text-blue-500 text-center w-full'} href={onPressFormOfContactAddress}>{formOfContactAddress}</a>
      <CopyTextButton text={formOfContactAddress} />
    </div>
  );
}

export default MainScreenBodyContactInformationSection;
