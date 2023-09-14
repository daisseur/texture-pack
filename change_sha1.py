from requests import get
from json import loads

sha1 = loads(get("https://github.com/daisseur/texture-pack/blob/main/CustomImagesServer.sha1").text)["payload"]["blob"]["rawLines"][0].split()[0]
print(sha1)
