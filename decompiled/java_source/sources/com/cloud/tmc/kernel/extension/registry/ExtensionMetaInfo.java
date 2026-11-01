package com.cloud.tmc.kernel.extension.registry;

import com.cloud.tmc.kernel.api.bytedata.ByteOrderDataUtil;
import com.cloud.tmc.kernel.extension.ExtensionType;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.node.Scope;
import com.cloud.tmc.kernel.utils.StringUtils;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class ExtensionMetaInfo extends TmcConfigBase {
    private static final byte EXTENSION_VERSION = 11;
    private static final String TAG = "ExtensionMetaInfo";
    public String bundleName;
    public String extensionClass;
    public List<String> filter;
    public String filterStrs;
    public boolean isLazy;
    public Class<? extends Scope> scope;
    public String scopeClassName;
    public ExtensionType type;
    public String typeString;

    public ExtensionMetaInfo(String str, String str2, String str3, Class<? extends Scope> cls) {
        this(str, str2, str3, cls, true);
    }

    public ExtensionMetaInfo(String str, String str2, String str3, Class<? extends Scope> cls, boolean z10) {
        this(str, str2, (List<String>) Collections.singletonList(str3), cls, z10);
    }

    public ExtensionMetaInfo(String str, String str2, String str3, String str4, String str5, boolean z10) {
        super(EXTENSION_VERSION);
        this.scope = null;
        this.bundleName = str;
        this.extensionClass = str2;
        this.isLazy = z10;
        this.filterStrs = str3;
        this.scopeClassName = str4;
        this.typeString = str5;
        this.filter = filterStrToList(str3);
        this.scope = getScopeClass(str4);
        this.type = "normal".equals(this.typeString) ? ExtensionType.NORMAL : ExtensionType.BRIDGE;
    }

    public ExtensionMetaInfo(String str, String str2, String str3, boolean z10) {
        this(str, str2, (List<String>) Collections.singletonList(str3), z10);
    }

    public ExtensionMetaInfo(String str, String str2, List<String> list) {
        this(str, str2, list, true);
    }

    public ExtensionMetaInfo(String str, String str2, List<String> list, Class<? extends Scope> cls) {
        this(str, str2, list, cls, true);
    }

    public ExtensionMetaInfo(String str, String str2, List<String> list, Class<? extends Scope> cls, ExtensionType extensionType, boolean z10) {
        super(EXTENSION_VERSION);
        this.bundleName = str;
        this.extensionClass = str2;
        this.isLazy = z10;
        this.filter = list;
        this.scope = cls;
        this.type = extensionType;
    }

    public ExtensionMetaInfo(String str, String str2, List<String> list, Class<? extends Scope> cls, boolean z10) {
        this(str, str2, list, cls, ExtensionType.NORMAL, z10);
    }

    public ExtensionMetaInfo(String str, String str2, List<String> list, boolean z10) {
        this(str, str2, list, (Class<? extends Scope>) null, z10);
    }

    private List<String> filterStrToList(String str) {
        if (StringUtils.isEmpty(str)) {
            return null;
        }
        String strReplace = str.replace(" ", "");
        if (StringUtils.isEmpty(strReplace)) {
            return null;
        }
        TmcLogger.d(TAG, "add event configs " + strReplace);
        return Arrays.asList(strReplace.split("\\|"));
    }

    private Class<? extends Scope> getScopeClass(String str) {
        String str2;
        if (StringUtils.isEmpty(str)) {
            return null;
        }
        try {
            if ("App".equalsIgnoreCase(str)) {
                str2 = "com.app.api.App";
            } else {
                if (!"Page".equalsIgnoreCase(str)) {
                    return null;
                }
                str2 = "com.app.api.Page";
            }
            Class cls = Class.forName(str2);
            if (Scope.class.isAssignableFrom(cls)) {
                return cls;
            }
            return null;
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
        }
    }

    @Override // com.cloud.tmc.kernel.extension.registry.TmcConfigBase
    public ExtensionMetaInfo deserialize(BufferedInputStream bufferedInputStream) throws IOException {
        this.mFormatVersion = ByteOrderDataUtil.readByte(bufferedInputStream);
        this.bundleName = ByteOrderDataUtil.readString(bufferedInputStream);
        this.filterStrs = ByteOrderDataUtil.readString(bufferedInputStream);
        this.extensionClass = ByteOrderDataUtil.readString(bufferedInputStream);
        this.isLazy = ByteOrderDataUtil.readBoolean(bufferedInputStream);
        this.scopeClassName = ByteOrderDataUtil.readString(bufferedInputStream);
        this.typeString = ByteOrderDataUtil.readString(bufferedInputStream);
        this.filter = filterStrToList(this.filterStrs);
        this.scope = getScopeClass(this.scopeClassName);
        this.type = "normal".equals(this.typeString) ? ExtensionType.NORMAL : ExtensionType.BRIDGE;
        return this;
    }

    @Override // com.cloud.tmc.kernel.extension.registry.TmcConfigBase
    public ExtensionMetaInfo serialize(BufferedOutputStream bufferedOutputStream) throws IOException {
        ByteOrderDataUtil.writeByte(bufferedOutputStream, this.mFormatVersion);
        ByteOrderDataUtil.writeString(bufferedOutputStream, this.bundleName);
        ByteOrderDataUtil.writeString(bufferedOutputStream, this.filterStrs);
        ByteOrderDataUtil.writeString(bufferedOutputStream, this.extensionClass);
        ByteOrderDataUtil.writeBoolean(bufferedOutputStream, this.isLazy);
        ByteOrderDataUtil.writeString(bufferedOutputStream, this.scopeClassName);
        ByteOrderDataUtil.writeString(bufferedOutputStream, this.typeString);
        return this;
    }

    public String toString() {
        return "ExtensionMetaInfo{extensionClass=" + this.extensionClass + '}';
    }
}
