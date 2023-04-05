echo "Deploying to surge"

echo "What is your surge token?"
read surge_token

echo "What is the website URL suffix?"
read url_suffix

$url = "alvarenga-surge-testing-${url_suffix}.surge.sh"

echo "Building website"

pnpm build

echo "Deploy started"

surge dist ${url} --token ${surge_token}

echo "Deploy finished"

echo "Your website is live at ${url}"