package com.transsion.transfer.androidasync.http;

import com.mbridge.msdk.playercommon.exoplayer2.extractor.ogg.DefaultOggSeeker;
import java.io.Serializable;

/* JADX INFO: loaded from: classes6.dex */
public class ProtocolVersion implements Serializable, Cloneable {
    private static final long serialVersionUID = 8950662842175091068L;
    protected final int major;
    protected final int minor;
    protected final String protocol;

    public ProtocolVersion(String str, int i11, int i12) {
        if (str == null) {
            throw new IllegalArgumentException("Protocol name must not be null.");
        }
        if (i11 < 0) {
            throw new IllegalArgumentException("Protocol major version number must not be negative.");
        }
        if (i12 < 0) {
            throw new IllegalArgumentException("Protocol minor version number may not be negative");
        }
        this.protocol = str;
        this.major = i11;
        this.minor = i12;
    }

    public Object clone() throws CloneNotSupportedException {
        return super.clone();
    }

    public int compareToVersion(ProtocolVersion protocolVersion) {
        if (protocolVersion == null) {
            throw new IllegalArgumentException("Protocol version must not be null.");
        }
        if (this.protocol.equals(protocolVersion.protocol)) {
            int major = getMajor() - protocolVersion.getMajor();
            return major == 0 ? getMinor() - protocolVersion.getMinor() : major;
        }
        throw new IllegalArgumentException("Versions for different protocols cannot be compared. " + this + " " + protocolVersion);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ProtocolVersion)) {
            return false;
        }
        ProtocolVersion protocolVersion = (ProtocolVersion) obj;
        return this.protocol.equals(protocolVersion.protocol) && this.major == protocolVersion.major && this.minor == protocolVersion.minor;
    }

    public ProtocolVersion forVersion(int i11, int i12) {
        return (i11 == this.major && i12 == this.minor) ? this : new ProtocolVersion(this.protocol, i11, i12);
    }

    public final int getMajor() {
        return this.major;
    }

    public final int getMinor() {
        return this.minor;
    }

    public final String getProtocol() {
        return this.protocol;
    }

    public final boolean greaterEquals(ProtocolVersion protocolVersion) {
        return isComparable(protocolVersion) && compareToVersion(protocolVersion) >= 0;
    }

    public final int hashCode() {
        return (this.protocol.hashCode() ^ (this.major * DefaultOggSeeker.MATCH_BYTE_RANGE)) ^ this.minor;
    }

    public boolean isComparable(ProtocolVersion protocolVersion) {
        return protocolVersion != null && this.protocol.equals(protocolVersion.protocol);
    }

    public final boolean lessEquals(ProtocolVersion protocolVersion) {
        return isComparable(protocolVersion) && compareToVersion(protocolVersion) <= 0;
    }

    public String toString() {
        return this.protocol + '/' + Integer.toString(this.major) + '.' + Integer.toString(this.minor);
    }
}
