.class public final Lhn/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private b:I

.field private c:Ljava/util/List;


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lhn/a;->a:I

    iput p2, p0, Lhn/a;->b:I

    return-void
.end method

.method public synthetic constructor <init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lhn/a;-><init>(II)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lhn/a;->b:I

    return v0
.end method

.method public final b()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lhn/a;->c:Ljava/util/List;

    return-object v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lhn/a;->a:I

    return v0
.end method

.method public final d()Z
    .locals 2

    iget v0, p0, Lhn/a;->a:I

    iget v1, p0, Lhn/a;->b:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final e(I)V
    .locals 0

    iput p1, p0, Lhn/a;->b:I

    return-void
.end method

.method public final f(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lhn/a;->c:Ljava/util/List;

    return-void
.end method
