.class public final Lcom/google/android/exoplayer2/util/n;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/util/n$b;,
        Lcom/google/android/exoplayer2/util/n$a;
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:[Lcom/google/android/exoplayer2/util/n$a;

.field private final c:[Lcom/google/android/exoplayer2/util/n$b;

.field private final d:Ljava/util/Map;

.field private final e:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/util/n;->a:I

    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->c()V

    const v1, 0x8b31

    invoke-static {v0, v1, p1}, Lcom/google/android/exoplayer2/util/n;->d(IILjava/lang/String;)V

    const p1, 0x8b30

    invoke-static {v0, p1, p2}, Lcom/google/android/exoplayer2/util/n;->d(IILjava/lang/String;)V

    invoke-static {v0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const/4 p1, 0x0

    filled-new-array {p1}, [I

    move-result-object p2

    const v1, 0x8b82

    invoke-static {v0, v1, p2, p1}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget p2, p2, p1

    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to link shader program: \n"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/GlUtil;->j(Ljava/lang/String;)V

    :cond_0
    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplayer2/util/n;->d:Ljava/util/Map;

    new-array p2, v1, [I

    const v2, 0x8b89

    invoke-static {v0, v2, p2, p1}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget v0, p2, p1

    new-array v0, v0, [Lcom/google/android/exoplayer2/util/n$a;

    iput-object v0, p0, Lcom/google/android/exoplayer2/util/n;->b:[Lcom/google/android/exoplayer2/util/n$a;

    move v0, p1

    :goto_0
    aget v2, p2, p1

    if-ge v0, v2, :cond_1

    iget v2, p0, Lcom/google/android/exoplayer2/util/n;->a:I

    invoke-static {v2, v0}, Lcom/google/android/exoplayer2/util/n$a;->a(II)Lcom/google/android/exoplayer2/util/n$a;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/util/n;->b:[Lcom/google/android/exoplayer2/util/n$a;

    aput-object v2, v3, v0

    iget-object v3, p0, Lcom/google/android/exoplayer2/util/n;->d:Ljava/util/Map;

    iget-object v4, v2, Lcom/google/android/exoplayer2/util/n$a;->a:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplayer2/util/n;->e:Ljava/util/Map;

    new-array p2, v1, [I

    iget v0, p0, Lcom/google/android/exoplayer2/util/n;->a:I

    const v1, 0x8b86

    invoke-static {v0, v1, p2, p1}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget v0, p2, p1

    new-array v0, v0, [Lcom/google/android/exoplayer2/util/n$b;

    iput-object v0, p0, Lcom/google/android/exoplayer2/util/n;->c:[Lcom/google/android/exoplayer2/util/n$b;

    move v0, p1

    :goto_1
    aget v1, p2, p1

    if-ge v0, v1, :cond_2

    iget v1, p0, Lcom/google/android/exoplayer2/util/n;->a:I

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/n$b;->a(II)Lcom/google/android/exoplayer2/util/n$b;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/util/n;->c:[Lcom/google/android/exoplayer2/util/n$b;

    aput-object v1, v2, v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/util/n;->e:Ljava/util/Map;

    iget-object v3, v1, Lcom/google/android/exoplayer2/util/n$b;->a:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->c()V

    return-void
.end method

.method static synthetic a([B)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/n;->h([B)I

    move-result p0

    return p0
.end method

.method static synthetic b(ILjava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/n;->f(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic c(ILjava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/n;->i(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static d(IILjava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result p1

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    invoke-static {p1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 v0, 0x0

    filled-new-array {v0}, [I

    move-result-object v1

    const v2, 0x8b81

    invoke-static {p1, v2, v1, v0}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", source: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/GlUtil;->j(Ljava/lang/String;)V

    :cond_0
    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    invoke-static {p1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->c()V

    return-void
.end method

.method private static f(ILjava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method private g(Ljava/lang/String;)I
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/util/n;->a:I

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/util/n;->f(ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method private static h([B)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    aget-byte v1, p0, v0

    if-nez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    array-length p0, p0

    return p0
.end method

.method private static i(ILjava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public e(Ljava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/util/n;->g(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->c()V

    return p1
.end method

.method public j(Ljava/lang/String;)I
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/util/n;->a:I

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/util/n;->i(ILjava/lang/String;)I

    move-result p1

    return p1
.end method
