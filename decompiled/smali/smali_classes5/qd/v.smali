.class final Lqd/v;
.super Ljava/lang/Object;


# static fields
.field private static final c:[I


# instance fields
.field private final a:Lqd/t;

.field private final b:Lqd/u;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    filled-new-array {v0, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lqd/v;->c:[I

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lqd/t;

    invoke-direct {v0}, Lqd/t;-><init>()V

    iput-object v0, p0, Lqd/v;->a:Lqd/t;

    new-instance v0, Lqd/u;

    invoke-direct {v0}, Lqd/u;-><init>()V

    iput-object v0, p0, Lqd/v;->b:Lqd/u;

    return-void
.end method


# virtual methods
.method a(ILid/a;I)Lcom/google/zxing/j;
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lqd/v;->c:[I

    invoke-static {p2, p3, v0, v1}, Lqd/w;->n(Lid/a;IZ[I)[I

    move-result-object p3

    :try_start_0
    iget-object v0, p0, Lqd/v;->b:Lqd/u;

    invoke-virtual {v0, p1, p2, p3}, Lqd/u;->b(ILid/a;[I)Lcom/google/zxing/j;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    iget-object v0, p0, Lqd/v;->a:Lqd/t;

    invoke-virtual {v0, p1, p2, p3}, Lqd/t;->b(ILid/a;[I)Lcom/google/zxing/j;

    move-result-object p1

    return-object p1
.end method
