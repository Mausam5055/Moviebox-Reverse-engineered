package com.google.common.net;

import com.google.common.base.b;
import com.google.common.base.j;
import com.google.common.base.m;
import com.google.common.base.p;
import java.io.Serializable;

/* JADX INFO: loaded from: classes4.dex */
public final class HostAndPort implements Serializable {
    private static final int NO_PORT = -1;
    private static final long serialVersionUID = 0;
    private final boolean hasBracketlessColons;
    private final String host;
    private final int port;

    private HostAndPort(String str, int i11, boolean z10) {
        this.host = str;
        this.port = i11;
        this.hasBracketlessColons = z10;
    }

    public static HostAndPort fromHost(String str) {
        HostAndPort hostAndPortFromString = fromString(str);
        m.j(!hostAndPortFromString.hasPort(), "Host has a port: %s", str);
        return hostAndPortFromString;
    }

    public static HostAndPort fromParts(String str, int i11) {
        m.f(isValidPort(i11), "Port out of range: %s", i11);
        HostAndPort hostAndPortFromString = fromString(str);
        m.j(!hostAndPortFromString.hasPort(), "Host has a port: %s", str);
        return new HostAndPort(hostAndPortFromString.host, i11, hostAndPortFromString.hasBracketlessColons);
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0042  */
    /* JADX WARN: Code duplicated, block: B:19:0x004a  */
    /* JADX WARN: Code duplicated, block: B:22:0x0055  */
    public static HostAndPort fromString(String str) {
        String str2;
        boolean z10;
        String strSubstring;
        String strSubstring2;
        m.o(str);
        int i11 = -1;
        if (!str.startsWith("[")) {
            int iIndexOf = str.indexOf(58);
            if (iIndexOf >= 0) {
                int i12 = iIndexOf + 1;
                if (str.indexOf(58, i12) == -1) {
                    strSubstring2 = str.substring(0, iIndexOf);
                    strSubstring = str.substring(i12);
                }
                if (!p.b(strSubstring)) {
                    m.j(strSubstring.startsWith("+") && b.c().h(strSubstring), "Unparseable port number: %s", str);
                    try {
                        i11 = Integer.parseInt(strSubstring);
                        m.j(isValidPort(i11), "Port number out of range: %s", str);
                    } catch (NumberFormatException unused) {
                        throw new IllegalArgumentException("Unparseable port number: " + str);
                    }
                }
                return new HostAndPort(str2, i11, z10);
            }
            str2 = str;
            z10 = iIndexOf >= 0;
            strSubstring = null;
            if (!p.b(strSubstring)) {
                m.j(strSubstring.startsWith("+") && b.c().h(strSubstring), "Unparseable port number: %s", str);
                i11 = Integer.parseInt(strSubstring);
                m.j(isValidPort(i11), "Port number out of range: %s", str);
            }
            return new HostAndPort(str2, i11, z10);
        }
        String[] hostAndPortFromBracketedHost = getHostAndPortFromBracketedHost(str);
        strSubstring2 = hostAndPortFromBracketedHost[0];
        strSubstring = hostAndPortFromBracketedHost[1];
        str2 = strSubstring2;
        z10 = false;
        if (!p.b(strSubstring)) {
            m.j(strSubstring.startsWith("+") && b.c().h(strSubstring), "Unparseable port number: %s", str);
            i11 = Integer.parseInt(strSubstring);
            m.j(isValidPort(i11), "Port number out of range: %s", str);
        }
        return new HostAndPort(str2, i11, z10);
    }

    private static String[] getHostAndPortFromBracketedHost(String str) {
        m.j(str.charAt(0) == '[', "Bracketed host-port string must start with a bracket: %s", str);
        int iIndexOf = str.indexOf(58);
        int iLastIndexOf = str.lastIndexOf(93);
        m.j(iIndexOf > -1 && iLastIndexOf > iIndexOf, "Invalid bracketed host/port: %s", str);
        String strSubstring = str.substring(1, iLastIndexOf);
        int i11 = iLastIndexOf + 1;
        if (i11 == str.length()) {
            return new String[]{strSubstring, ""};
        }
        m.j(str.charAt(i11) == ':', "Only a colon may follow a close bracket: %s", str);
        int i12 = iLastIndexOf + 2;
        for (int i13 = i12; i13 < str.length(); i13++) {
            m.j(Character.isDigit(str.charAt(i13)), "Port must be numeric: %s", str);
        }
        return new String[]{strSubstring, str.substring(i12)};
    }

    private static boolean isValidPort(int i11) {
        return i11 >= 0 && i11 <= 65535;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof HostAndPort)) {
            return false;
        }
        HostAndPort hostAndPort = (HostAndPort) obj;
        return j.a(this.host, hostAndPort.host) && this.port == hostAndPort.port;
    }

    public String getHost() {
        return this.host;
    }

    public int getPort() {
        m.u(hasPort());
        return this.port;
    }

    public int getPortOrDefault(int i11) {
        return hasPort() ? this.port : i11;
    }

    public boolean hasPort() {
        return this.port >= 0;
    }

    public int hashCode() {
        return j.b(this.host, Integer.valueOf(this.port));
    }

    public HostAndPort requireBracketsForIPv6() {
        m.j(!this.hasBracketlessColons, "Possible bracketless IPv6 literal: %s", this.host);
        return this;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder(this.host.length() + 8);
        if (this.host.indexOf(58) >= 0) {
            sb2.append('[');
            sb2.append(this.host);
            sb2.append(']');
        } else {
            sb2.append(this.host);
        }
        if (hasPort()) {
            sb2.append(':');
            sb2.append(this.port);
        }
        return sb2.toString();
    }

    public HostAndPort withDefaultPort(int i11) {
        m.d(isValidPort(i11));
        return hasPort() ? this : new HostAndPort(this.host, i11, this.hasBracketlessColons);
    }
}
