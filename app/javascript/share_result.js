function shareResult(resultText) {
  const appUrl = window.location.origin;
  const shareText = `${resultText}\n\n${appUrl}\n\n#芋煮アプリ`;
  const xURL = `https://x.com/intent/tweet?text=${encodeURIComponent(shareText)}`;
 
  window.open(xURL, '_blank', 'width=600,height=400');
}

document.addEventListener('DOMContentLoaded', function() {
  console.log('シェア機能が読み込まれました');
});
