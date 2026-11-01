.class abstract Lh10/w;
.super Ljava/lang/Object;


# instance fields
.field final a:I

.field final b:I

.field final c:Ljava/lang/String;

.field final d:Ljava/lang/String;

.field final e:Ljava/lang/String;

.field final f:J

.field g:I


# direct methods
.method constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lh10/w;->a:I

    iput p2, p0, Lh10/w;->b:I

    iput-object p3, p0, Lh10/w;->c:Ljava/lang/String;

    iput-object p4, p0, Lh10/w;->d:Ljava/lang/String;

    iput-object p5, p0, Lh10/w;->e:Ljava/lang/String;

    iput-wide p6, p0, Lh10/w;->f:J

    return-void
.end method


# virtual methods
.method a()I
    .locals 1

    iget v0, p0, Lh10/w;->g:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lh10/w;->e:Ljava/lang/String;

    invoke-static {v0}, Lh10/y;->c(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lh10/w;->g:I

    :cond_0
    iget v0, p0, Lh10/w;->g:I

    return v0
.end method
