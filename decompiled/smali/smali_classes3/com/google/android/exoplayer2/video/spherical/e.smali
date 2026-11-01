.class final Lcom/google/android/exoplayer2/video/spherical/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/video/spherical/e$a;
    }
.end annotation


# static fields
.field private static final j:[F

.field private static final k:[F

.field private static final l:[F

.field private static final m:[F

.field private static final n:[F


# instance fields
.field private a:I

.field private b:Lcom/google/android/exoplayer2/video/spherical/e$a;

.field private c:Lcom/google/android/exoplayer2/video/spherical/e$a;

.field private d:Lcom/google/android/exoplayer2/util/n;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x9

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/android/exoplayer2/video/spherical/e;->j:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_1

    sput-object v1, Lcom/google/android/exoplayer2/video/spherical/e;->k:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_2

    sput-object v1, Lcom/google/android/exoplayer2/video/spherical/e;->l:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_3

    sput-object v1, Lcom/google/android/exoplayer2/video/spherical/e;->m:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_4

    sput-object v0, Lcom/google/android/exoplayer2/video/spherical/e;->n:[F

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        -0x41000000    # -0.5f
        0x0
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        -0x41000000    # -0.5f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f000000    # 0.5f
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x3f000000    # 0.5f
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c(Lcom/google/android/exoplayer2/video/spherical/c;)Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/c;->a:Lcom/google/android/exoplayer2/video/spherical/c$a;

    iget-object p0, p0, Lcom/google/android/exoplayer2/video/spherical/c;->b:Lcom/google/android/exoplayer2/video/spherical/c$a;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/spherical/c$a;->b()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/video/spherical/c$a;->a(I)Lcom/google/android/exoplayer2/video/spherical/c$b;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/video/spherical/c$b;->a:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/spherical/c$a;->b()I

    move-result v0

    if-ne v0, v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/video/spherical/c$a;->a(I)Lcom/google/android/exoplayer2/video/spherical/c$b;

    move-result-object p0

    iget p0, p0, Lcom/google/android/exoplayer2/video/spherical/c$b;->a:I

    if-nez p0, :cond_0

    move v2, v3

    :cond_0
    return v2
.end method


# virtual methods
.method public a(I[FZ)V
    .locals 18

    move-object/from16 v0, p0

    if-eqz p3, :cond_0

    iget-object v1, v0, Lcom/google/android/exoplayer2/video/spherical/e;->c:Lcom/google/android/exoplayer2/video/spherical/e$a;

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/google/android/exoplayer2/video/spherical/e;->b:Lcom/google/android/exoplayer2/video/spherical/e$a;

    :goto_0
    if-nez v1, :cond_1

    return-void

    :cond_1
    iget v2, v0, Lcom/google/android/exoplayer2/video/spherical/e;->a:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    if-eqz p3, :cond_2

    sget-object v2, Lcom/google/android/exoplayer2/video/spherical/e;->l:[F

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/google/android/exoplayer2/video/spherical/e;->k:[F

    goto :goto_1

    :cond_3
    const/4 v4, 0x2

    if-ne v2, v4, :cond_5

    if-eqz p3, :cond_4

    sget-object v2, Lcom/google/android/exoplayer2/video/spherical/e;->n:[F

    goto :goto_1

    :cond_4
    sget-object v2, Lcom/google/android/exoplayer2/video/spherical/e;->m:[F

    goto :goto_1

    :cond_5
    sget-object v2, Lcom/google/android/exoplayer2/video/spherical/e;->j:[F

    :goto_1
    iget v4, v0, Lcom/google/android/exoplayer2/video/spherical/e;->f:I

    const/4 v5, 0x0

    invoke-static {v4, v3, v5, v2, v5}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    iget v2, v0, Lcom/google/android/exoplayer2/video/spherical/e;->e:I

    move-object/from16 v4, p2

    invoke-static {v2, v3, v5, v4, v5}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const v2, 0x84c0

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const v2, 0x8d65

    move/from16 v3, p1

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v2, v0, Lcom/google/android/exoplayer2/video/spherical/e;->i:I

    invoke-static {v2, v5}, Landroid/opengl/GLES20;->glUniform1i(II)V

    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->c()V

    iget v6, v0, Lcom/google/android/exoplayer2/video/spherical/e;->g:I

    const/16 v10, 0xc

    invoke-static {v1}, Lcom/google/android/exoplayer2/video/spherical/e$a;->a(Lcom/google/android/exoplayer2/video/spherical/e$a;)Ljava/nio/FloatBuffer;

    move-result-object v11

    const/4 v7, 0x3

    const/16 v8, 0x1406

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->c()V

    iget v12, v0, Lcom/google/android/exoplayer2/video/spherical/e;->h:I

    const/16 v16, 0x8

    invoke-static {v1}, Lcom/google/android/exoplayer2/video/spherical/e$a;->b(Lcom/google/android/exoplayer2/video/spherical/e$a;)Ljava/nio/FloatBuffer;

    move-result-object v17

    const/4 v13, 0x2

    const/16 v14, 0x1406

    const/4 v15, 0x0

    invoke-static/range {v12 .. v17}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->c()V

    invoke-static {v1}, Lcom/google/android/exoplayer2/video/spherical/e$a;->c(Lcom/google/android/exoplayer2/video/spherical/e$a;)I

    move-result v2

    invoke-static {v1}, Lcom/google/android/exoplayer2/video/spherical/e$a;->d(Lcom/google/android/exoplayer2/video/spherical/e$a;)I

    move-result v1

    invoke-static {v2, v5, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->c()V

    return-void
.end method

.method public b()V
    .locals 3

    new-instance v0, Lcom/google/android/exoplayer2/util/n;

    const-string v1, "uniform mat4 uMvpMatrix;\nuniform mat3 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec2 aTexCoords;\nvarying vec2 vTexCoords;\n// Standard transformation.\nvoid main() {\n  gl_Position = uMvpMatrix * aPosition;\n  vTexCoords = (uTexMatrix * vec3(aTexCoords, 1)).xy;\n}\n"

    const-string v2, "// This is required since the texture data is GL_TEXTURE_EXTERNAL_OES.\n#extension GL_OES_EGL_image_external : require\nprecision mediump float;\n// Standard texture rendering shader.\nuniform samplerExternalOES uTexture;\nvarying vec2 vTexCoords;\nvoid main() {\n  gl_FragColor = texture2D(uTexture, vTexCoords);\n}\n"

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/util/n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/e;->d:Lcom/google/android/exoplayer2/util/n;

    const-string v1, "uMvpMatrix"

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/n;->j(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/video/spherical/e;->e:I

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/e;->d:Lcom/google/android/exoplayer2/util/n;

    const-string v1, "uTexMatrix"

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/n;->j(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/video/spherical/e;->f:I

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/e;->d:Lcom/google/android/exoplayer2/util/n;

    const-string v1, "aPosition"

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/n;->e(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/video/spherical/e;->g:I

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/e;->d:Lcom/google/android/exoplayer2/util/n;

    const-string v1, "aTexCoords"

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/n;->e(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/video/spherical/e;->h:I

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/e;->d:Lcom/google/android/exoplayer2/util/n;

    const-string v1, "uTexture"

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/n;->j(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/video/spherical/e;->i:I

    return-void
.end method

.method public d(Lcom/google/android/exoplayer2/video/spherical/c;)V
    .locals 3

    invoke-static {p1}, Lcom/google/android/exoplayer2/video/spherical/e;->c(Lcom/google/android/exoplayer2/video/spherical/c;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Lcom/google/android/exoplayer2/video/spherical/c;->c:I

    iput v0, p0, Lcom/google/android/exoplayer2/video/spherical/e;->a:I

    new-instance v0, Lcom/google/android/exoplayer2/video/spherical/e$a;

    iget-object v1, p1, Lcom/google/android/exoplayer2/video/spherical/c;->a:Lcom/google/android/exoplayer2/video/spherical/c$a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/video/spherical/c$a;->a(I)Lcom/google/android/exoplayer2/video/spherical/c$b;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/video/spherical/e$a;-><init>(Lcom/google/android/exoplayer2/video/spherical/c$b;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/e;->b:Lcom/google/android/exoplayer2/video/spherical/e$a;

    iget-boolean v1, p1, Lcom/google/android/exoplayer2/video/spherical/c;->d:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/exoplayer2/video/spherical/e$a;

    iget-object p1, p1, Lcom/google/android/exoplayer2/video/spherical/c;->b:Lcom/google/android/exoplayer2/video/spherical/c$a;

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/video/spherical/c$a;->a(I)Lcom/google/android/exoplayer2/video/spherical/c$b;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/video/spherical/e$a;-><init>(Lcom/google/android/exoplayer2/video/spherical/c$b;)V

    :goto_0
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/e;->c:Lcom/google/android/exoplayer2/video/spherical/e$a;

    return-void
.end method
