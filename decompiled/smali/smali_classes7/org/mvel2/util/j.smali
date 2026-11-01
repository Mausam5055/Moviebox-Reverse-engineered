.class public Lorg/mvel2/util/j;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mvel2/util/j$c;,
        Lorg/mvel2/util/j$b;
    }
.end annotation


# instance fields
.field private a:[C

.field private b:Ljava/util/ArrayList;

.field private c:Ljava/util/Set;


# direct methods
.method public constructor <init>([C)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mvel2/util/j;->a:[C

    return-void
.end method

.method static synthetic a(Lorg/mvel2/util/j;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/mvel2/util/j;->b:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public b()Lorg/mvel2/util/j$b;
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mvel2/util/j;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lorg/mvel2/util/j;->c:Ljava/util/Set;

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v1

    move v1, v0

    :goto_0
    iget-object v3, p0, Lorg/mvel2/util/j;->a:[C

    array-length v4, v3

    const/4 v5, 0x0

    if-ge v0, v4, :cond_1

    aget-char v3, v3, v0

    const/16 v4, 0xa

    if-eq v3, v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lorg/mvel2/util/j;->c:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lorg/mvel2/util/j;->b:Ljava/util/ArrayList;

    new-instance v4, Lorg/mvel2/util/j$c;

    add-int/lit8 v6, v2, 0x1

    invoke-direct {v4, v1, v0, v2, v5}, Lorg/mvel2/util/j$c;-><init>(IIILorg/mvel2/util/j$a;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v0, 0x1

    move v2, v6

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-le v0, v1, :cond_2

    iget-object v3, p0, Lorg/mvel2/util/j;->c:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lorg/mvel2/util/j;->b:Ljava/util/ArrayList;

    new-instance v4, Lorg/mvel2/util/j$c;

    invoke-direct {v4, v1, v0, v2, v5}, Lorg/mvel2/util/j$c;-><init>(IIILorg/mvel2/util/j$a;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    new-instance v0, Lorg/mvel2/util/j$a;

    invoke-direct {v0, p0}, Lorg/mvel2/util/j$a;-><init>(Lorg/mvel2/util/j;)V

    return-object v0
.end method
