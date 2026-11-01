package com.amazonaws.services.s3.model;

import java.io.Serializable;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class EncryptedGetObjectRequest extends GetObjectRequest implements Serializable {
    private String instructionFileSuffix;
    private boolean keyWrapExpected;
    private ExtraMaterialsDescription supplemental;

    public EncryptedGetObjectRequest(S3ObjectId s3ObjectId) {
        super(s3ObjectId);
        this.supplemental = ExtraMaterialsDescription.NONE;
    }

    public EncryptedGetObjectRequest(String str, String str2) {
        this(str, str2, (String) null);
    }

    public EncryptedGetObjectRequest(String str, String str2, String str3) {
        super(str, str2, str3);
        this.supplemental = ExtraMaterialsDescription.NONE;
        setKey(str2);
        setVersionId(str3);
    }

    public EncryptedGetObjectRequest(String str, String str2, boolean z10) {
        super(str, str2, z10);
        this.supplemental = ExtraMaterialsDescription.NONE;
    }

    public ExtraMaterialsDescription getExtraMaterialDescription() {
        return this.supplemental;
    }

    public String getInstructionFileSuffix() {
        return this.instructionFileSuffix;
    }

    public boolean isKeyWrapExpected() {
        return this.keyWrapExpected;
    }

    public void setExtraMaterialDescription(ExtraMaterialsDescription extraMaterialsDescription) {
        if (extraMaterialsDescription == null) {
            extraMaterialsDescription = ExtraMaterialsDescription.NONE;
        }
        this.supplemental = extraMaterialsDescription;
    }

    public void setInstructionFileSuffix(String str) {
        this.instructionFileSuffix = str;
    }

    public void setKeyWrapExpected(boolean z10) {
        this.keyWrapExpected = z10;
    }

    public EncryptedGetObjectRequest withExtraMaterialsDescription(ExtraMaterialsDescription extraMaterialsDescription) {
        setExtraMaterialDescription(extraMaterialsDescription);
        return this;
    }

    public EncryptedGetObjectRequest withExtraMaterialsDescription(Map<String, String> map) {
        setExtraMaterialDescription(map == null ? null : new ExtraMaterialsDescription(map));
        return this;
    }

    public EncryptedGetObjectRequest withInstructionFileSuffix(String str) {
        this.instructionFileSuffix = str;
        return this;
    }

    public EncryptedGetObjectRequest withKeyWrapExpected(boolean z10) {
        this.keyWrapExpected = z10;
        return this;
    }
}
