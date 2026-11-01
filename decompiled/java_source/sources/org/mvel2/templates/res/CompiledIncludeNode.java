package org.mvel2.templates.res;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.Serializable;
import org.mvel2.ParserContext;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.templates.CompiledTemplate;
import org.mvel2.templates.TemplateError;
import r10.b;
import s10.c;
import s10.d;

/* JADX INFO: loaded from: classes7.dex */
public class CompiledIncludeNode extends Node {
    private CompiledTemplate cFileCache;
    private Serializable cIncludeExpression;
    private Serializable cPreExpression;
    private ParserContext context;
    private long fileDateStamp;

    public CompiledIncludeNode(int i11, String str, char[] cArr, int i12, int i13, ParserContext parserContext) {
        this.begin = i11;
        this.name = str;
        this.contents = cArr;
        this.cStart = i12;
        this.cEnd = i13 - 1;
        this.end = i13;
        this.context = parserContext;
        int iA = d.a(cArr, i12);
        char[] cArr2 = this.contents;
        int i14 = this.cStart;
        this.cIncludeExpression = org.mvel2.d.g(cArr2, i14, iA - i14, parserContext);
        char[] cArr3 = this.contents;
        if (iA != cArr3.length) {
            int i15 = iA + 1;
            this.cPreExpression = org.mvel2.d.g(cArr3, i15, this.cEnd - i15, parserContext);
        }
    }

    private static FileInputStream openInputStream(File file) throws IOException {
        if (file == null) {
            throw new FileNotFoundException("file parameter is null");
        }
        if (!file.exists()) {
            throw new FileNotFoundException("File '" + file + "' does not exist");
        }
        if (file.isDirectory()) {
            throw new IOException("File '" + file + "' exists but is a directory");
        }
        if (file.canRead()) {
            return new FileInputStream(file);
        }
        throw new IOException("File '" + file + "' cannot be read");
    }

    private String readFile(r10.d dVar, String str, Object obj, VariableResolverFactory variableResolverFactory) {
        File file = new File(String.valueOf(dVar.i().k()) + "/" + str);
        long j11 = this.fileDateStamp;
        if (j11 == 0 || j11 != file.lastModified()) {
            this.fileDateStamp = file.lastModified();
            this.cFileCache = b.g(readInFile(dVar, file), this.context);
        }
        return String.valueOf(r10.d.d(this.cFileCache, obj, variableResolverFactory));
    }

    /* JADX WARN: Code duplicated, block: B:56:0x00fd A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:58:0x00db A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public static String readInFile(r10.d dVar, File file) throws Throwable {
        FileInputStream fileInputStreamOpenInputStream;
        StringBuilder sb2 = new StringBuilder();
        BufferedReader bufferedReader = null;
        try {
            try {
                fileInputStreamOpenInputStream = openInputStream(file);
                try {
                    dVar.i().q(file.getParent());
                    BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(fileInputStreamOpenInputStream, "UTF-8"));
                    while (true) {
                        try {
                            String line = bufferedReader2.readLine();
                            if (line == null) {
                                break;
                            }
                            sb2.append(line);
                        } catch (FileNotFoundException unused) {
                            throw new TemplateError("cannot include template '" + file.getPath() + "': file not found.");
                        } catch (IOException e11) {
                            e = e11;
                            throw new TemplateError("unknown I/O exception while including '" + file.getPath() + "' (stacktrace nested)", e);
                        } catch (Throwable th2) {
                            th = th2;
                            bufferedReader = bufferedReader2;
                            if (bufferedReader != null) {
                                try {
                                    bufferedReader.close();
                                } catch (IOException unused2) {
                                    throw new TemplateError("cannot close the reader on template file '" + file.getPath() + "'.");
                                }
                            }
                            if (fileInputStreamOpenInputStream != null) {
                                try {
                                    fileInputStreamOpenInputStream.close();
                                } catch (IOException unused3) {
                                    throw new TemplateError("cannot close the stream on template file '" + file.getPath() + "'.");
                                }
                            }
                            throw th;
                        }
                    }
                    dVar.i().n();
                    String string = sb2.toString();
                    try {
                        bufferedReader2.close();
                        if (fileInputStreamOpenInputStream != null) {
                            try {
                                fileInputStreamOpenInputStream.close();
                            } catch (IOException unused4) {
                                throw new TemplateError("cannot close the stream on template file '" + file.getPath() + "'.");
                            }
                        }
                        return string;
                    } catch (IOException unused5) {
                        throw new TemplateError("cannot close the reader on template file '" + file.getPath() + "'.");
                    }
                } catch (FileNotFoundException unused6) {
                } catch (IOException e12) {
                    e = e12;
                } catch (Throwable th3) {
                    th = th3;
                    if (bufferedReader != null) {
                        bufferedReader.close();
                    }
                    if (fileInputStreamOpenInputStream != null) {
                        fileInputStreamOpenInputStream.close();
                    }
                    throw th;
                }
            } catch (Throwable th4) {
                th = th4;
                fileInputStreamOpenInputStream = null;
            }
        } catch (FileNotFoundException unused7) {
        } catch (IOException e13) {
            e = e13;
        } catch (Throwable th5) {
            th = th5;
            fileInputStreamOpenInputStream = null;
        }
    }

    @Override // org.mvel2.templates.res.Node
    public boolean demarcate(Node node, char[] cArr) {
        return false;
    }

    @Override // org.mvel2.templates.res.Node
    public Object eval(r10.d dVar, c cVar, Object obj, VariableResolverFactory variableResolverFactory) {
        String str = (String) org.mvel2.d.u(this.cIncludeExpression, obj, variableResolverFactory, String.class);
        Serializable serializable = this.cPreExpression;
        if (serializable != null) {
            org.mvel2.d.t(serializable, obj, variableResolverFactory);
        }
        Node node = this.next;
        return node != null ? node.eval(dVar, cVar.append(String.valueOf(r10.d.a(readFile(dVar, str, obj, variableResolverFactory), obj, variableResolverFactory))), obj, variableResolverFactory) : cVar.append(String.valueOf(org.mvel2.d.n(readFile(dVar, str, obj, variableResolverFactory), obj, variableResolverFactory)));
    }
}
