import { Button } from '@/components/ui/buttons/Button';
import { ClipboardIcon } from '@heroicons/react/16/solid';

function CopyTextButton({ text }: { text: string }) {
  return (
    <Button
      className={'p-1 h-[25px]'}
      onClick={() => navigator.clipboard.writeText(text)}
    >
      <ClipboardIcon />
    </Button>
  );
}

export default CopyTextButton;
