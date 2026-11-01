.class Lorg/mvel2/util/q$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mvel2/util/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/Object;

.field private c:Ljava/lang/Object;

.field final synthetic d:Lorg/mvel2/util/q;


# direct methods
.method public constructor <init>(Lorg/mvel2/util/q;ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/mvel2/util/q$a;->d:Lorg/mvel2/util/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/mvel2/util/q$a;->a:I

    iput-object p3, p0, Lorg/mvel2/util/q$a;->b:Ljava/lang/Object;

    iput-object p4, p0, Lorg/mvel2/util/q$a;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lorg/mvel2/util/q$a;->a:I

    return v0
.end method

.method public b()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/mvel2/util/q$a;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public c()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/mvel2/util/q$a;->c:Ljava/lang/Object;

    return-object v0
.end method

.method d(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/mvel2/util/q$a;->c:Ljava/lang/Object;

    return-void
.end method
