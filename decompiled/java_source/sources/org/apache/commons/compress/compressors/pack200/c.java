package org.apache.commons.compress.compressors.pack200;

import java.io.File;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.OpenOption;

/* JADX INFO: loaded from: classes7.dex */
class c extends b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final File f71192b;

    c() throws IOException {
        File fileCreateTempFile = File.createTempFile("commons-compress", "packtemp");
        this.f71192b = fileCreateTempFile;
        fileCreateTempFile.deleteOnExit();
        ((FilterOutputStream) this).out = Files.newOutputStream(fileCreateTempFile.toPath(), new OpenOption[0]);
    }
}
