# Define some macros
%define name my-python-app
%define version 1.0
%define release 1
%define srcdir %{_builddir}/%{name}-%{version}

# Define the main package information
Name: %{name}
Version: %{version}
Release: %{release}
Summary: A sample Python application
License: MIT

# Define the source files
Source0: %{name}-%{version}.tar.gz

# Define the build requirements
BuildRequires: python3-devel

# Define the build steps
%prep
%autosetup -n %{name}-%{version}

%build
# No build steps needed for Python

%install
mkdir -p %{buildroot}/usr/lib/%{name}
cp -r src/* %{buildroot}/usr/lib/%{name}/

# Define the package files
%files
/usr/lib/%{name}/

# Define the scriptlets (optional)
%post
echo "Installation complete."

%preun
echo "Uninstalling..."

%description
This is a sample Python application.

%changelog
* Sat Apr 27 2024 Your Name pramodtrine@gmail.com 1.0-1
- Initial package creation
