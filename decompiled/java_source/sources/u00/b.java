package u00;

import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import com.hisavana.common.tracking.TrackingKey;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.URL;
import java.util.Stack;
import org.apache.tools.ant.BuildException;
import org.apache.tools.ant.Location;
import org.apache.tools.ant.Project;
import org.apache.tools.ant.RuntimeConfigurable;
import org.apache.tools.ant.r;
import org.apache.tools.ant.t;
import org.apache.tools.ant.u;
import org.apache.tools.ant.util.p;
import org.apache.tools.ant.w;
import org.xml.sax.Attributes;
import org.xml.sax.InputSource;
import org.xml.sax.Locator;
import org.xml.sax.SAXException;
import org.xml.sax.SAXParseException;
import org.xml.sax.XMLReader;
import org.xml.sax.helpers.DefaultHandler;

/* JADX INFO: loaded from: classes7.dex */
public class b extends r {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static a f76541b = new C0933b();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static a f76542c = new f();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static a f76543d = new c();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static a f76544e = new d();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final org.apache.tools.ant.util.d f76545f = org.apache.tools.ant.util.d.k();

    public static class a {
        public void a(char[] cArr, int i11, int i12, u00.a aVar) throws SAXParseException {
            String strTrim = new String(cArr, i11, i12).trim();
            if (strTrim.length() <= 0) {
                return;
            }
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Unexpected text \"");
            stringBuffer.append(strTrim);
            stringBuffer.append("\"");
            throw new SAXParseException(stringBuffer.toString(), aVar.k());
        }

        public void b(String str, String str2, String str3, u00.a aVar) {
        }

        public void c(String str, String str2, u00.a aVar) {
        }

        public a d(String str, String str2, String str3, Attributes attributes, u00.a aVar) throws SAXParseException {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Unexpected element \"");
            stringBuffer.append(str3);
            stringBuffer.append(" \"");
            throw new SAXParseException(stringBuffer.toString(), aVar.k());
        }

        public void e(String str, String str2, String str3, Attributes attributes, u00.a aVar) {
        }
    }

    /* JADX INFO: renamed from: u00.b$b, reason: collision with other inner class name */
    public static class C0933b extends a {
        @Override // u00.b.a
        public void a(char[] cArr, int i11, int i12, u00.a aVar) {
            aVar.c().addText(cArr, i11, i12);
        }

        @Override // u00.b.a
        public void c(String str, String str2, u00.a aVar) {
            aVar.o();
        }

        @Override // u00.b.a
        public a d(String str, String str2, String str3, Attributes attributes, u00.a aVar) {
            return b.f76541b;
        }

        @Override // u00.b.a
        public void e(String str, String str2, String str3, Attributes attributes, u00.a aVar) {
            RuntimeConfigurable runtimeConfigurableC = aVar.c();
            Object proxy = runtimeConfigurableC != null ? runtimeConfigurableC.getProxy() : null;
            w wVar = new w(str2);
            wVar.setProject(aVar.m());
            wVar.G(str);
            wVar.H(str3);
            wVar.s(r.e(wVar.x(), str2));
            wVar.r(str3);
            wVar.setLocation(new Location(aVar.k().getSystemId(), aVar.k().getLineNumber(), aVar.k().getColumnNumber()));
            wVar.p(aVar.h());
            if (proxy != null) {
                ((w) proxy).t(wVar);
            } else {
                aVar.h().b(wVar);
            }
            aVar.b(wVar, attributes);
            RuntimeConfigurable runtimeConfigurable = new RuntimeConfigurable(wVar, wVar.i());
            for (int i11 = 0; i11 < attributes.getLength(); i11++) {
                String localName = attributes.getLocalName(i11);
                String uri = attributes.getURI(i11);
                if (uri != null && !uri.equals("") && !uri.equals(str)) {
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append(uri);
                    stringBuffer.append(":");
                    stringBuffer.append(attributes.getQName(i11));
                    localName = stringBuffer.toString();
                }
                String value = attributes.getValue(i11);
                if ("ant-type".equals(localName) || ("antlib:org.apache.tools.ant".equals(uri) && "ant-type".equals(attributes.getLocalName(i11)))) {
                    Project projectM = aVar.m();
                    StringBuffer stringBuffer2 = new StringBuffer();
                    stringBuffer2.append("WARNING: the ant-type mechanism has been deprecated");
                    stringBuffer2.append(p.f71603a);
                    stringBuffer2.append("         and");
                    stringBuffer2.append(" will not be available in Ant 1.8.0 or higher");
                    projectM.x(stringBuffer2.toString(), 1);
                    int iIndexOf = value.indexOf(":");
                    if (iIndexOf >= 0) {
                        String strSubstring = value.substring(0, iIndexOf);
                        String strL = aVar.l(strSubstring);
                        if (strL == null) {
                            StringBuffer stringBuffer3 = new StringBuffer();
                            stringBuffer3.append("Unable to find XML NS prefix \"");
                            stringBuffer3.append(strSubstring);
                            stringBuffer3.append("\"");
                            throw new BuildException(stringBuffer3.toString());
                        }
                        value = r.e(strL, value.substring(iIndexOf + 1));
                    }
                    localName = "ant-type";
                }
                runtimeConfigurable.setAttribute(localName, value);
            }
            if (runtimeConfigurableC != null) {
                runtimeConfigurableC.addChild(runtimeConfigurable);
            }
            aVar.p(runtimeConfigurable);
        }
    }

    public static class c extends a {
        @Override // u00.b.a
        public a d(String str, String str2, String str3, Attributes attributes, u00.a aVar) throws SAXParseException {
            if (str2.equals("project") && (str.equals("") || str.equals("antlib:org.apache.tools.ant"))) {
                return b.f76544e;
            }
            if (!str2.equals(str3)) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("Unexpected element \"");
                stringBuffer.append(str3);
                stringBuffer.append("\" ");
                stringBuffer.append(str2);
                throw new SAXParseException(stringBuffer.toString(), aVar.k());
            }
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append("Unexpected element \"{");
            stringBuffer2.append(str);
            stringBuffer2.append("}");
            stringBuffer2.append(str2);
            stringBuffer2.append("\" {");
            stringBuffer2.append("antlib:org.apache.tools.ant");
            stringBuffer2.append("}");
            stringBuffer2.append(str2);
            throw new SAXParseException(stringBuffer2.toString(), aVar.k());
        }
    }

    public static class d extends a {
        @Override // u00.b.a
        public a d(String str, String str2, String str3, Attributes attributes, u00.a aVar) {
            return (str2.equals("target") && (str.equals("") || str.equals("antlib:org.apache.tools.ant"))) ? b.f76542c : b.f76541b;
        }

        @Override // u00.b.a
        public void e(String str, String str2, String str3, Attributes attributes, u00.a aVar) throws SAXParseException {
            Project projectM = aVar.m();
            aVar.j().k(new Location(aVar.k()));
            String str4 = null;
            boolean z10 = false;
            for (int i11 = 0; i11 < attributes.getLength(); i11++) {
                String uri = attributes.getURI(i11);
                if (uri == null || uri.equals("") || uri.equals(str)) {
                    String localName = attributes.getLocalName(i11);
                    String value = attributes.getValue(i11);
                    if (localName.equals("default")) {
                        if (value != null && !value.equals("") && !aVar.n()) {
                            projectM.H(value);
                        }
                    } else if (localName.equals("name")) {
                        if (value != null) {
                            aVar.r(value);
                            if (!aVar.n()) {
                                projectM.I(value);
                                projectM.d(value, projectM);
                            }
                            z10 = true;
                        }
                    } else if (!localName.equals("id")) {
                        if (!localName.equals("basedir")) {
                            StringBuffer stringBuffer = new StringBuffer();
                            stringBuffer.append("Unexpected attribute \"");
                            stringBuffer.append(attributes.getQName(i11));
                            stringBuffer.append("\"");
                            throw new SAXParseException(stringBuffer.toString(), aVar.k());
                        }
                        if (!aVar.n()) {
                            str4 = value;
                        }
                    } else if (value != null && !aVar.n()) {
                        projectM.d(value, projectM);
                    }
                }
            }
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append("ant.file.");
            stringBuffer2.append(aVar.g());
            String strS = projectM.s(stringBuffer2.toString());
            if (strS != null && z10) {
                File file = new File(strS);
                if (aVar.n() && !file.equals(aVar.e())) {
                    StringBuffer stringBuffer3 = new StringBuffer();
                    stringBuffer3.append("Duplicated project name in import. Project ");
                    stringBuffer3.append(aVar.g());
                    stringBuffer3.append(" defined first in ");
                    stringBuffer3.append(strS);
                    stringBuffer3.append(" and again in ");
                    stringBuffer3.append(aVar.e());
                    projectM.x(stringBuffer3.toString(), 1);
                }
            }
            if (aVar.e() != null && z10) {
                StringBuffer stringBuffer4 = new StringBuffer();
                stringBuffer4.append("ant.file.");
                stringBuffer4.append(aVar.g());
                projectM.M(stringBuffer4.toString(), aVar.e().toString());
            }
            if (aVar.n()) {
                return;
            }
            if (projectM.s("basedir") != null) {
                projectM.G(projectM.s("basedir"));
            } else if (str4 == null) {
                projectM.G(aVar.f().getAbsolutePath());
            } else if (new File(str4).isAbsolute()) {
                projectM.G(str4);
            } else {
                projectM.F(b.f76545f.q(aVar.f(), str4));
            }
            projectM.e("", aVar.j());
            aVar.s(aVar.j());
        }
    }

    public static class e extends DefaultHandler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Stack f76546a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private a f76547b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private u00.a f76548c;

        public e(u00.a aVar, a aVar2) {
            Stack stack = new Stack();
            this.f76546a = stack;
            this.f76547b = aVar2;
            stack.push(aVar2);
            this.f76548c = aVar;
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void characters(char[] cArr, int i11, int i12) throws SAXParseException {
            this.f76547b.a(cArr, i11, i12, this.f76548c);
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void endElement(String str, String str2, String str3) {
            this.f76547b.c(str, str2, this.f76548c);
            a aVar = (a) this.f76546a.pop();
            this.f76547b = aVar;
            if (aVar != null) {
                aVar.b(str, str2, str3, this.f76548c);
            }
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void endPrefixMapping(String str) {
            this.f76548c.d(str);
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.EntityResolver
        public InputSource resolveEntity(String str, String str2) {
            Project projectM = this.f76548c.m();
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("resolving systemId: ");
            stringBuffer.append(str2);
            projectM.x(stringBuffer.toString(), 3);
            if (str2.startsWith("file:")) {
                String strI = b.f76545f.i(str2);
                File file = new File(strI);
                if (!file.isAbsolute()) {
                    file = b.f76545f.q(this.f76548c.f(), strI);
                    Project projectM2 = this.f76548c.m();
                    StringBuffer stringBuffer2 = new StringBuffer();
                    stringBuffer2.append("Warning: '");
                    stringBuffer2.append(str2);
                    stringBuffer2.append("' in ");
                    stringBuffer2.append(this.f76548c.e());
                    stringBuffer2.append(" should be expressed simply as '");
                    stringBuffer2.append(strI.replace('\\', '/'));
                    stringBuffer2.append("' for compliance with other XML tools");
                    projectM2.x(stringBuffer2.toString(), 1);
                }
                Project projectM3 = this.f76548c.m();
                StringBuffer stringBuffer3 = new StringBuffer();
                stringBuffer3.append("file=");
                stringBuffer3.append(file);
                projectM3.x(stringBuffer3.toString(), 4);
                try {
                    InputSource inputSource = new InputSource(new FileInputStream(file));
                    inputSource.setSystemId(b.f76545f.r(file.getAbsolutePath()));
                    return inputSource;
                } catch (FileNotFoundException unused) {
                    Project projectM4 = this.f76548c.m();
                    StringBuffer stringBuffer4 = new StringBuffer();
                    stringBuffer4.append(file.getAbsolutePath());
                    stringBuffer4.append(" could not be found");
                    projectM4.x(stringBuffer4.toString(), 1);
                }
            }
            this.f76548c.m().x("could not resolve systemId", 4);
            return null;
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void setDocumentLocator(Locator locator) {
            this.f76548c.u(locator);
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void startElement(String str, String str2, String str3, Attributes attributes) throws SAXParseException {
            a aVarD = this.f76547b.d(str, str2, str3, attributes, this.f76548c);
            this.f76546a.push(this.f76547b);
            this.f76547b = aVarD;
            aVarD.e(str, str2, str3, attributes, this.f76548c);
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void startPrefixMapping(String str, String str2) {
            this.f76548c.v(str, str2);
        }
    }

    public static class f extends a {
        @Override // u00.b.a
        public void c(String str, String str2, u00.a aVar) {
            aVar.s(aVar.j());
        }

        @Override // u00.b.a
        public a d(String str, String str2, String str3, Attributes attributes, u00.a aVar) {
            return b.f76541b;
        }

        @Override // u00.b.a
        public void e(String str, String str2, String str3, Attributes attributes, u00.a aVar) throws SAXParseException {
            Project projectM = aVar.m();
            t tVar = new t();
            tVar.m(projectM);
            tVar.k(new Location(aVar.k()));
            aVar.a(tVar);
            String str4 = null;
            boolean z10 = false;
            String str5 = "";
            for (int i11 = 0; i11 < attributes.getLength(); i11++) {
                String uri = attributes.getURI(i11);
                if (uri == null || uri.equals("") || uri.equals(str)) {
                    String localName = attributes.getLocalName(i11);
                    String value = attributes.getValue(i11);
                    if (localName.equals("name")) {
                        if ("".equals(value)) {
                            throw new BuildException("name attribute must not be empty");
                        }
                        str4 = value;
                    } else if (localName.equals("depends")) {
                        str5 = value;
                    } else if (localName.equals("if")) {
                        tVar.j(value);
                    } else if (localName.equals("unless")) {
                        tVar.n(value);
                    } else if (!localName.equals("id")) {
                        if (!localName.equals(TrackingKey.DESCRIPTION)) {
                            StringBuffer stringBuffer = new StringBuffer();
                            stringBuffer.append("Unexpected attribute \"");
                            stringBuffer.append(localName);
                            stringBuffer.append("\"");
                            throw new SAXParseException(stringBuffer.toString(), aVar.k());
                        }
                        tVar.i(value);
                    } else if (value != null && !value.equals("")) {
                        aVar.m().d(value, tVar);
                    }
                }
            }
            if (str4 == null) {
                throw new SAXParseException("target element appears without a name attribute", aVar.k());
            }
            if (aVar.i().get(str4) != null) {
                StringBuffer stringBuffer2 = new StringBuffer();
                stringBuffer2.append("Duplicate target '");
                stringBuffer2.append(str4);
                stringBuffer2.append("'");
                throw new BuildException(stringBuffer2.toString(), tVar.c());
            }
            if (projectM.u().containsKey(str4)) {
                StringBuffer stringBuffer3 = new StringBuffer();
                stringBuffer3.append("Already defined in main or a previous import, ignore ");
                stringBuffer3.append(str4);
                projectM.x(stringBuffer3.toString(), 3);
            } else {
                tVar.l(str4);
                aVar.i().put(str4, tVar);
                projectM.c(str4, tVar);
                z10 = true;
            }
            if (str5.length() > 0) {
                tVar.h(str5);
            }
            if (!aVar.n() || aVar.g() == null || aVar.g().length() == 0) {
                return;
            }
            StringBuffer stringBuffer4 = new StringBuffer();
            stringBuffer4.append(aVar.g());
            stringBuffer4.append(".");
            stringBuffer4.append(str4);
            String string = stringBuffer4.toString();
            if (z10) {
                tVar = new t(tVar);
            }
            tVar.l(string);
            aVar.i().put(string, tVar);
            projectM.c(string, tVar);
        }
    }

    public void j(Project project, Object obj, e eVar) {
        String string;
        URL url;
        File fileO;
        String string2;
        u00.a aVar = eVar.f76548c;
        InputStream inputStreamOpenStream = null;
        if (obj instanceof File) {
            fileO = f76545f.o(((File) obj).getAbsolutePath());
            aVar.q(fileO);
            string = fileO.toString();
            url = null;
        } else {
            if (!(obj instanceof URL)) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("Source ");
                stringBuffer.append(obj.getClass().getName());
                stringBuffer.append(" not supported by this plugin");
                throw new BuildException(stringBuffer.toString());
            }
            URL url2 = (URL) obj;
            string = url2.toString();
            url = url2;
            fileO = null;
        }
        try {
            try {
                try {
                    try {
                        try {
                            try {
                                XMLReader xMLReaderC = org.apache.tools.ant.util.e.c();
                                if (fileO != null) {
                                    string2 = f76545f.r(fileO.getAbsolutePath());
                                    inputStreamOpenStream = new FileInputStream(fileO);
                                } else {
                                    inputStreamOpenStream = FirebasePerfUrlConnection.openStream(url);
                                    string2 = url.toString();
                                }
                                InputSource inputSource = new InputSource(inputStreamOpenStream);
                                if (string2 != null) {
                                    inputSource.setSystemId(string2);
                                }
                                StringBuffer stringBuffer2 = new StringBuffer();
                                stringBuffer2.append("parsing buildfile ");
                                stringBuffer2.append(string);
                                stringBuffer2.append(" with URI = ");
                                stringBuffer2.append(string2);
                                project.x(stringBuffer2.toString(), 3);
                                xMLReaderC.setContentHandler(eVar);
                                xMLReaderC.setEntityResolver(eVar);
                                xMLReaderC.setErrorHandler(eVar);
                                xMLReaderC.setDTDHandler(eVar);
                                xMLReaderC.parse(inputSource);
                                org.apache.tools.ant.util.d.b(inputStreamOpenStream);
                            } catch (UnsupportedEncodingException e11) {
                                StringBuffer stringBuffer3 = new StringBuffer();
                                stringBuffer3.append("Encoding of project file ");
                                stringBuffer3.append(string);
                                stringBuffer3.append(" is invalid.");
                                throw new BuildException(stringBuffer3.toString(), e11);
                            }
                        } catch (IOException e12) {
                            StringBuffer stringBuffer4 = new StringBuffer();
                            stringBuffer4.append("Error reading project file ");
                            stringBuffer4.append(string);
                            stringBuffer4.append(": ");
                            stringBuffer4.append(e12.getMessage());
                            throw new BuildException(stringBuffer4.toString(), e12);
                        }
                    } catch (SAXParseException e13) {
                        e = e13;
                        Location location = new Location(e.getSystemId(), e.getLineNumber(), e.getColumnNumber());
                        Exception exception = e.getException();
                        if (!(exception instanceof BuildException)) {
                            String message = e.getMessage();
                            if (exception != null) {
                                e = exception;
                            }
                            throw new BuildException(message, e, location);
                        }
                        BuildException buildException = (BuildException) exception;
                        if (buildException.getLocation() != Location.UNKNOWN_LOCATION) {
                            throw buildException;
                        }
                        buildException.setLocation(location);
                        throw buildException;
                    }
                } catch (SAXException e14) {
                    e = e14;
                    Exception exception2 = e.getException();
                    if (exception2 instanceof BuildException) {
                        throw ((BuildException) exception2);
                    }
                    String message2 = e.getMessage();
                    if (exception2 != null) {
                        e = exception2;
                    }
                    throw new BuildException(message2, e);
                }
            } catch (FileNotFoundException e15) {
                throw new BuildException(e15);
            }
        } catch (Throwable th2) {
            org.apache.tools.ant.util.d.b(inputStreamOpenStream);
            throw th2;
        }
    }

    public w k(Project project, URL url) {
        t tVar = new t();
        tVar.m(project);
        u00.a aVar = new u00.a(project);
        aVar.a(tVar);
        aVar.t(tVar);
        j(aVar.m(), url, new e(aVar, f76541b));
        u[] uVarArrF = tVar.f();
        if (uVarArrF.length == 1) {
            return (w) uVarArrF[0];
        }
        throw new BuildException("No tasks defined");
    }
}
