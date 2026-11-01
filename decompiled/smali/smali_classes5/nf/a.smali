.class public final Lnf/a;
.super Ljava/lang/Object;


# static fields
.field public static final A:[B


# instance fields
.field private final a:Lff/a;

.field private b:S

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lnf/a;->A:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x44t
        0x58t
        0x44t
        0x49t
        0x46t
        0x46t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lff/a;

    invoke-static {p1}, Lgf/d;->a(Ljava/io/InputStream;)[B

    move-result-object p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-direct {v0, p1}, Lff/a;-><init>(Ljava/nio/ByteBuffer;)V

    iput-object v0, p0, Lnf/a;->a:Lff/a;

    invoke-direct {p0}, Lnf/a;->z()V

    return-void
.end method

.method private z()V
    .locals 4

    iget-object v0, p0, Lnf/a;->a:Lff/a;

    sget-object v1, Lnf/a;->A:[B

    array-length v2, v1

    invoke-virtual {v0, v2}, Lff/a;->l(I)[B

    move-result-object v0

    invoke-static {v0, v1}, Lgf/c;->d([B[B)I

    move-result v1

    if-nez v1, :cond_4

    iget-object v0, p0, Lnf/a;->a:Lff/a;

    invoke-virtual {v0}, Lff/a;->B()S

    move-result v0

    iput-short v0, p0, Lnf/a;->b:S

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad dex patch file version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v2, p0, Lnf/a;->b:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    if-le v0, v1, :cond_2

    iget-object v0, p0, Lnf/a;->a:Lff/a;

    invoke-virtual {v0}, Lff/a;->w()I

    move-result v0

    iput v0, p0, Lnf/a;->c:I

    iget-object v0, p0, Lnf/a;->a:Lff/a;

    invoke-virtual {v0}, Lff/a;->w()I

    move-result v0

    iput v0, p0, Lnf/a;->d:I

    :cond_2
    iget-object v0, p0, Lnf/a;->a:Lff/a;

    invoke-virtual {v0}, Lff/a;->w()I

    move-result v0

    iput v0, p0, Lnf/a;->e:I

    iget-object v0, p0, Lnf/a;->a:Lff/a;

    invoke-virtual {v0}, Lff/a;->w()I

    move-result v0

    iput v0, p0, Lnf/a;->f:I

    iget-object v0, p0, Lnf/a;->a:Lff/a;

    invoke-virtual {v0}, Lff/a;->w()I

    move-result v0

    iput v0, p0, Lnf/a;->g:I

    iget-object v0, p0, Lnf/a;->a:Lff/a;

    invoke-virtual {v0}, Lff/a;->w()I

    move-result v0

    iput v0, p0, Lnf/a;->h:I

    iget-object v0, p0, Lnf/a;->a:Lff/a;

    invoke-virtual {v0}, Lff/a;->w()I

    move-result v0

    iput v0, p0, Lnf/a;->i:I

    iget-object v0, p0, Lnf/a;->a:Lff/a;

    invoke-virtual {v0}, Lff/a;->w()I

    move-result v0

    iput v0, p0, Lnf/a;->j:I

    iget-object v0, p0, Lnf/a;->a:Lff/a;

    invoke-virtual {v0}, Lff/a;->w()I

    move-result v0

    iput v0, p0, Lnf/a;->k:I

    iget-short v0, p0, Lnf/a;->b:S

    if-le v0, v1, :cond_3

    iget-object v0, p0, Lnf/a;->a:Lff/a;

    invoke-virtual {v0}, Lff/a;->w()I

    move-result v0

    iput v0, p0, Lnf/a;->l:I

    iget-object v0, p0, Lnf/a;->a:Lff/a;

    invoke-virtual {v0}, Lff/a;->w()I

    move-result v0

    iput v0, p0, Lnf/a;->m:I

    :cond_3
    iget-object v0, p0, Lnf/a;->a:Lff/a;

    invoke-virtual {v0}, Lff/a;->w()I

    move-result v0

    iput v0, p0, Lnf/a;->n:I

    iget-object v0, p0, Lnf/a;->a:Lff/a;

    invoke-virtual {v0}, Lff/a;->w()I

    move-result v0

    iput v0, p0, Lnf/a;->o:I

    iget-object v0, p0, Lnf/a;->a:Lff/a;

    invoke-virtual {v0}, Lff/a;->w()I

    move-result v0

    iput v0, p0, Lnf/a;->p:I

    iget-object v0, p0, Lnf/a;->a:Lff/a;

    invoke-virtual {v0}, Lff/a;->w()I

    move-result v0

    iput v0, p0, Lnf/a;->q:I

    iget-object v0, p0, Lnf/a;->a:Lff/a;

    invoke-virtual {v0}, Lff/a;->w()I

    move-result v0

    iput v0, p0, Lnf/a;->r:I

    iget-object v0, p0, Lnf/a;->a:Lff/a;

    invoke-virtual {v0}, Lff/a;->w()I

    move-result v0

    iput v0, p0, Lnf/a;->s:I

    iget-object v0, p0, Lnf/a;->a:Lff/a;

    invoke-virtual {v0}, Lff/a;->w()I

    move-result v0

    iput v0, p0, Lnf/a;->t:I

    iget-object v0, p0, Lnf/a;->a:Lff/a;

    invoke-virtual {v0}, Lff/a;->w()I

    move-result v0

    iput v0, p0, Lnf/a;->u:I

    iget-object v0, p0, Lnf/a;->a:Lff/a;

    invoke-virtual {v0}, Lff/a;->w()I

    move-result v0

    iput v0, p0, Lnf/a;->v:I

    iget-object v0, p0, Lnf/a;->a:Lff/a;

    invoke-virtual {v0}, Lff/a;->w()I

    move-result v0

    iput v0, p0, Lnf/a;->w:I

    iget-object v0, p0, Lnf/a;->a:Lff/a;

    invoke-virtual {v0}, Lff/a;->w()I

    move-result v0

    iput v0, p0, Lnf/a;->x:I

    iget-object v0, p0, Lnf/a;->a:Lff/a;

    invoke-virtual {v0}, Lff/a;->w()I

    move-result v0

    iput v0, p0, Lnf/a;->y:I

    iget-object v0, p0, Lnf/a;->a:Lff/a;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lff/a;->l(I)[B

    move-result-object v0

    iput-object v0, p0, Lnf/a;->z:[B

    iget-object v0, p0, Lnf/a;->a:Lff/a;

    iget v1, p0, Lnf/a;->f:I

    invoke-virtual {v0, v1}, Lff/a;->g(I)V

    return-void

    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad dex patch file magic: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public a()Lff/a;
    .locals 1

    iget-object v0, p0, Lnf/a;->a:Lff/a;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lnf/a;->c:I

    return v0
.end method

.method public c()[B
    .locals 1

    iget-object v0, p0, Lnf/a;->z:[B

    return-object v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lnf/a;->w:I

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lnf/a;->q:I

    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lnf/a;->r:I

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lnf/a;->y:I

    return v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lnf/a;->l:I

    return v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lnf/a;->s:I

    return v0
.end method

.method public j()I
    .locals 1

    iget v0, p0, Lnf/a;->n:I

    return v0
.end method

.method public k()I
    .locals 1

    iget v0, p0, Lnf/a;->t:I

    return v0
.end method

.method public l()I
    .locals 1

    iget v0, p0, Lnf/a;->v:I

    return v0
.end method

.method public m()I
    .locals 1

    iget v0, p0, Lnf/a;->d:I

    return v0
.end method

.method public n()I
    .locals 1

    iget v0, p0, Lnf/a;->e:I

    return v0
.end method

.method public o()I
    .locals 1

    iget v0, p0, Lnf/a;->x:I

    return v0
.end method

.method public p()I
    .locals 1

    iget v0, p0, Lnf/a;->j:I

    return v0
.end method

.method public q()I
    .locals 1

    iget v0, p0, Lnf/a;->o:I

    return v0
.end method

.method public r()I
    .locals 1

    iget v0, p0, Lnf/a;->m:I

    return v0
.end method

.method public s()I
    .locals 1

    iget v0, p0, Lnf/a;->k:I

    return v0
.end method

.method public t()I
    .locals 1

    iget v0, p0, Lnf/a;->i:I

    return v0
.end method

.method public u()I
    .locals 1

    iget v0, p0, Lnf/a;->u:I

    return v0
.end method

.method public v()I
    .locals 1

    iget v0, p0, Lnf/a;->g:I

    return v0
.end method

.method public w()I
    .locals 1

    iget v0, p0, Lnf/a;->h:I

    return v0
.end method

.method public x()I
    .locals 1

    iget v0, p0, Lnf/a;->p:I

    return v0
.end method

.method public y()S
    .locals 1

    iget-short v0, p0, Lnf/a;->b:S

    return v0
.end method
