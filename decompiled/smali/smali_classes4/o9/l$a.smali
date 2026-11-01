.class Lo9/l$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo9/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/UUID;

.field private final b:I

.field private final c:[B


# direct methods
.method public constructor <init>(Ljava/util/UUID;I[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo9/l$a;->a:Ljava/util/UUID;

    iput p2, p0, Lo9/l$a;->b:I

    iput-object p3, p0, Lo9/l$a;->c:[B

    return-void
.end method

.method static synthetic a(Lo9/l$a;)Ljava/util/UUID;
    .locals 0

    iget-object p0, p0, Lo9/l$a;->a:Ljava/util/UUID;

    return-object p0
.end method

.method static synthetic b(Lo9/l$a;)I
    .locals 0

    iget p0, p0, Lo9/l$a;->b:I

    return p0
.end method

.method static synthetic c(Lo9/l$a;)[B
    .locals 0

    iget-object p0, p0, Lo9/l$a;->c:[B

    return-object p0
.end method
