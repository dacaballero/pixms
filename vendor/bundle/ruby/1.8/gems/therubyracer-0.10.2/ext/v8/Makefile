
SHELL = /bin/sh

#### Start of system configuration section. ####

srcdir = .
topdir = /usr/lib/ruby/1.8/x86_64-linux
hdrdir = $(topdir)
VPATH = $(srcdir):$(topdir):$(hdrdir)
prefix = $(DESTDIR)/usr
exec_prefix = $(prefix)
oldincludedir = $(DESTDIR)/usr/include
dvidir = $(docdir)
mandir = $(datarootdir)/man
bindir = $(exec_prefix)/bin
sharedstatedir = $(prefix)/com
includedir = $(prefix)/include
vendorarchdir = $(vendorlibdir)/$(sitearch)
datadir = $(datarootdir)
libexecdir = $(exec_prefix)/libexec
vendorlibdir = $(vendordir)/$(ruby_version)
htmldir = $(docdir)
pdfdir = $(docdir)
sbindir = $(exec_prefix)/sbin
sitelibdir = $(sitedir)/$(ruby_version)
localedir = $(datarootdir)/locale
sysconfdir = $(prefix)/etc
sitearchdir = $(sitelibdir)/$(sitearch)
sitedir = $(libdir)/ruby/site_ruby
localstatedir = $(prefix)/var
libdir = $(exec_prefix)/lib
datarootdir = $(prefix)/share
archdir = $(rubylibdir)/$(arch)
vendordir = $(libdir)/ruby/vendor_ruby
docdir = $(datarootdir)/doc/$(PACKAGE)
rubylibdir = $(libdir)/ruby/$(ruby_version)
psdir = $(docdir)
infodir = $(datarootdir)/info

CC = gcc
LIBRUBY = $(LIBRUBY_SO)
LIBRUBY_A = lib$(RUBY_SO_NAME)-static.a
LIBRUBYARG_SHARED = -Wl,-R -Wl,$(libdir) -L$(libdir) -l$(RUBY_SO_NAME)
LIBRUBYARG_STATIC = -l$(RUBY_SO_NAME)-static

RUBY_EXTCONF_H = 
CFLAGS   =  -fPIC -g -O2  -fPIC $(cflags) 
INCFLAGS = -I. -I/home/pixelaba/pixms/vendor/bundle/ruby/1.8/gems/libv8-3.3.10.4-x86_64-linux/lib/libv8/v8/include -I$(topdir) -I$(hdrdir) -I$(srcdir)
DEFS     = 
CPPFLAGS =   $(DEFS) $(cppflags) -Wall -g -rdynamic
CXXFLAGS = $(CFLAGS) 
ldflags  = /home/pixelaba/pixms/vendor/bundle/ruby/1.8/gems/libv8-3.3.10.4-x86_64-linux/lib/libv8/build/v8/libv8.a -L.  -rdynamic -Wl,-export-dynamic
dldflags = 
archflag = 
DLDFLAGS = $(ldflags) $(dldflags) $(archflag)
LDSHARED = $(CXX) -shared
AR = ar
EXEEXT = 

RUBY_INSTALL_NAME = ruby
RUBY_SO_NAME = ruby
arch = x86_64-linux
sitearch = x86_64-linux
ruby_version = 1.8
ruby = /usr/bin/ruby
RUBY = $(ruby)
RM = rm -f
MAKEDIRS = mkdir -p
INSTALL = /usr/bin/install -c
INSTALL_PROG = $(INSTALL) -m 0755
INSTALL_DATA = $(INSTALL) -m 644
COPY = cp

#### End of system configuration section. ####

preload = 

libpath = . $(libdir)
LIBPATH =  -L. -L$(libdir) -Wl,-R$(libdir)
DEFFILE = 

CLEANFILES = mkmf.log
DISTCLEANFILES = 

extout = 
extout_prefix = 
target_prefix = 
LOCAL_LIBS = 
LIBS = $(LIBRUBYARG_SHARED)  -lrt -ldl -lcrypt -lm   -lc -lpthread
SRCS = v8_message.cpp v8_context.cpp v8_script.cpp v8_handle.cpp v8_template.cpp v8_debug.cpp v8_date.cpp v8_try_catch.cpp v8_v8.cpp v8_exception.cpp v8_value.cpp v8_weakref.cpp v8.cpp rr.cpp v8_callbacks.cpp v8_function.cpp v8_external.cpp v8_array.cpp v8_string.cpp v8_object.cpp v8_locker.cpp
OBJS = v8_message.o v8_context.o v8_script.o v8_handle.o v8_template.o v8_debug.o v8_date.o v8_try_catch.o v8_v8.o v8_exception.o v8_value.o v8_weakref.o v8.o rr.o v8_callbacks.o v8_function.o v8_external.o v8_array.o v8_string.o v8_object.o v8_locker.o
TARGET = v8
DLLIB = $(TARGET).so
EXTSTATIC = 
STATIC_LIB = 

BINDIR        = $(bindir)
RUBYCOMMONDIR = $(sitedir)$(target_prefix)
RUBYLIBDIR = /home/pixelaba/pixms/vendor/bundle/ruby/1.8/gems/therubyracer-0.10.2/lib$(target_prefix)
RUBYARCHDIR = /home/pixelaba/pixms/vendor/bundle/ruby/1.8/gems/therubyracer-0.10.2/lib$(target_prefix)

TARGET_SO     = $(DLLIB)
CLEANLIBS     = $(TARGET).so $(TARGET).il? $(TARGET).tds $(TARGET).map
CLEANOBJS     = *.o *.a *.s[ol] *.pdb *.exp *.bak

all:		$(DLLIB)
static:		$(STATIC_LIB)

clean:
		@-$(RM) $(CLEANLIBS) $(CLEANOBJS) $(CLEANFILES)

distclean:	clean
		@-$(RM) Makefile $(RUBY_EXTCONF_H) conftest.* mkmf.log
		@-$(RM) core ruby$(EXEEXT) *~ $(DISTCLEANFILES)

realclean:	distclean
install: install-so install-rb

install-so: $(RUBYARCHDIR)
install-so: $(RUBYARCHDIR)/$(DLLIB)
$(RUBYARCHDIR)/$(DLLIB): $(DLLIB)
	$(INSTALL_PROG) $(DLLIB) $(RUBYARCHDIR)
install-rb: pre-install-rb install-rb-default
install-rb-default: pre-install-rb-default
pre-install-rb: Makefile
pre-install-rb-default: Makefile
$(RUBYARCHDIR):
	$(MAKEDIRS) $@

site-install: site-install-so site-install-rb
site-install-so: install-so
site-install-rb: install-rb

.SUFFIXES: .c .m .cc .cxx .cpp .C .o

.cc.o:
	$(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) -c $<

.cxx.o:
	$(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) -c $<

.cpp.o:
	$(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) -c $<

.C.o:
	$(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) -c $<

.c.o:
	$(CC) $(INCFLAGS) $(CPPFLAGS) $(CFLAGS) -c $<

$(DLLIB): $(OBJS) Makefile
	@-$(RM) $@
	$(LDSHARED) -o $@ $(OBJS) $(LIBPATH) $(DLDFLAGS) $(LOCAL_LIBS) $(LIBS)



$(OBJS): ruby.h defines.h
