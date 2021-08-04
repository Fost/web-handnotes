# Web security

- [A practical security guide for web developers](https://github.com/FallibleInc/security-guide-for-developers/blob/master/security-checklist.md)
- [Projects/OWASP Secure Web Application Framework Manifesto/Releases/Current/Manifesto - OWASP](https://www.owasp.org/index.php/Projects/OWASP_Secure_Web_Application_Framework_Manifesto/Releases/Current/Manifesto)
- [HTML5 Security Cheatsheet](https://github.com/cure53/H5SC) and [HTML5 Security Cheatsheet](https://html5sec.org/)
- [The Open Web Application Security Project - OWASP](https://www.owasp.org/index.php/Main_Page)
- [Everything you need to know about HTTP security headers - Appcanary](https://blog.appcanary.com/2017/http-security-headers.html)

## Authentification

- [Authentication Cheat Sheet - OWASP](https://www.owasp.org/index.php/Authentication_Cheat_Sheet)
- [Authentication — Wikipedia](https://en.wikipedia.org/wiki/Authentication)
- [Category:Authentication methods — Wikipedia](https://en.wikipedia.org/wiki/Category:Authentication_methods)
- [The Current State Of Authentication: We Have A Password Problem – Smashing Magazine](https://www.smashingmagazine.com/2016/06/the-current-state-of-authentication-we-have-a-password-problem/)
- [Security token — Wikipedia](https://en.wikipedia.org/wiki/Security_token)
- [Password — Wikipedia](https://en.wikipedia.org/wiki/Password#Alternatives_to_passwords_for_authentication)
- [GRC's | SQRL Secure Quick Reliable Login](https://www.grc.com/sqrl/sqrl.htm)
- [teesloane/Auth-Boss: Become an Auth Boss. Learn about different authentication methodologies on the web.](https://github.com/teesloane/Auth-Boss)

## “Invalid Username or Password”, a useless security measure

You can confirm if an username exist by trying to create an new account with the same username.

<https://kev.inburke.com/kevin/invalid-username-or-password-useless/>

> - Rate limiting can go a fair way to preventing brute force attacks. To find email addresses, an attacker is going to need to try a lot of email addresses and/or a lot of passwords, and get a lot of them wrong. Consider throttling invalid login attempts by IP address or subnet. Check submitted passwords against a dictionary of common passwords (123456, monkey, etc) and ban that traffic extra hard. Exponential backoff (forcing attackers to try again after 1, 2, 4, 8, 16.. seconds) is useful.
> - Give guidance to users about creating strong passwords. Allow easy integration with LastPass or 1Password.
> - Add a 2-factor auth option to your website. Encourage users to use it.
> - Warn users about malicious behavior ("someone is trying to snoop your password") and contact them about suspicious logins.

### Password

#### Password rules

User (advices):

- use long password
- use mix of special chars, numbers, higher case and lowercase

Implementation:

- show advices and use detection rules to show warnings
- long password (at least 8 chars, never max at least 30 chars)
- don't allow password be equal to the username or the email address
- don't disallow copy/past. It wont increase protection:
  - [Troy Hunt: The “Cobra Effect” that is disabling paste on password fields](https://www.troyhunt.com/the-cobra-effect-that-is-disabling/)
  - [Let them paste passwords - NCSC Site](https://www.ncsc.gov.uk/blog-post/let-them-paste-passwords)
  - [Le copier coller est possible dans les champs de formulaire. - Bonne pratique N° 104 - Check-list Opquast Website V3 - Opquast Check-lists](https://checklists.opquast.com/fr/opquast-website-v3/criteria/43617)

Password strength:

- <https://cups.cs.cmu.edu/meter/> - [cupslab/password_meter: This project implements a data-driven password meter. Its effects on password security and usability were evaluated in the following publication: http://www.blaseur.com/papers/CHI17meter.pdf and a demo is available at: https://cups.cs.cmu.edu/meter/](https://github.com/cupslab/password_meter)
- <https://github.com/dropbox/zxcvbn> and <https://github.com/bjeavons/zxcvbn-php>
- [javascript - Password Strength Meter - Stack Overflow](https://stackoverflow.com/questions/948172/password-strength-meter)
- [Password Strength Checker](http://www.passwordmeter.com/)
- <https://github.com/aarondo/Strength.js>
- [password meter - JSFiddle](http://jsfiddle.net/dimitar/n8Dza/)
- <https://github.com/danpalmer/jquery.complexify.js>
- [Reusable Security: New Paper on Password Security Metrics](http://reusablesec.blogspot.fr/2010/10/new-paper-on-password-security-metrics.html) - "Shannon entropy" (longer is stronger) is false
- [Password strength — Wikipedia](https://en.wikipedia.org/wiki/Password_strength#Entropy_as_a_measure_of_password_strength)

#### SSO (Single sign-on)

If credentials leak, this could give access to more than one application/website.

Examples: OAuth, Google, Facebook, Twitter, LinkedIn, Github, etc.

#### Password hash cracking

- [Your Password is Too Damn Short](http://blog.codinghorror.com/your-password-is-too-damn-short/)
- [Rainbow table — Wikipédia](https://fr.wikipedia.org/wiki/Rainbow_table)

#### Fcrack zip

```bash
sudo port install fcrackzip
```

 -l (#-#): specify the minimum and maximum length of passwords to check
 -b : use brute force to crack the password
 -c (charset): specify the character set to use
 -u : unzip / filter incorrect passwords

### Client certificate

Authenticate clients with certificates

- [SSL/TLS Strong Encryption: How-To - Apache HTTP Server Version 2.2](https://httpd.apache.org/docs/2.2/ssl/ssl_howto.html#accesscontrol)
- [Technology/KnowledgeBase/ClientCerts - CAcert Wiki](http://wiki.cacert.org/Technology/KnowledgeBase/ClientCerts)
- [FAQ/ImportRootCert - CAcert Wiki](http://wiki.cacert.org/FAQ/ImportRootCert)
- [FAQ/BrowserClients - CAcert Wiki](http://wiki.cacert.org/FAQ/BrowserClients#Importing_the_CAcert_Root_Certificate)
- [Installing the Certificate through the Web Browser](http://help-icc.untangle.com/Content/User%20Guide/UI_Tabs/SSLCertificateGPO_v4/Appendix%20B%20Installing%20the.htm) and [Using client side ssl certificates in firefox and chrome](http://www.binarytides.com/client-side-ssl-certificates-firefox-chrome/)
- [ssl - How to install trusted CA certificate on Android device? - Stack Overflow](https://stackoverflow.com/questions/4461360/how-to-install-trusted-ca-certificate-on-android-device/)
