.class public Lxe/k;
.super Ljava/lang/Object;

# interfaces
.implements Lxe/h;


# instance fields
.field private a:Ljava/util/Collection;

.field private b:Ljava/util/Map;

.field private c:Ljava/lang/String;

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxe/k;->a:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;Ljava/util/Map;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxe/k;->a:Ljava/util/Collection;

    iput-object p2, p0, Lxe/k;->b:Ljava/util/Map;

    iput-object p3, p0, Lxe/k;->c:Ljava/lang/String;

    iput p4, p0, Lxe/k;->d:I

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)Lxe/g;
    .locals 2

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/google/zxing/DecodeHintType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object p1, p0, Lxe/k;->b:Ljava/util/Map;

    if-eqz p1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    iget-object p1, p0, Lxe/k;->a:Ljava/util/Collection;

    if-eqz p1, :cond_1

    sget-object v1, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object p1, p0, Lxe/k;->c:Ljava/lang/String;

    if-eqz p1, :cond_2

    sget-object v1, Lcom/google/zxing/DecodeHintType;->CHARACTER_SET:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    new-instance p1, Lcom/google/zxing/f;

    invoke-direct {p1}, Lcom/google/zxing/f;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/zxing/f;->e(Ljava/util/Map;)V

    iget v0, p0, Lxe/k;->d:I

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    new-instance v0, Lxe/g;

    invoke-direct {v0, p1}, Lxe/g;-><init>(Lcom/google/zxing/i;)V

    return-object v0

    :cond_3
    new-instance v0, Lxe/m;

    invoke-direct {v0, p1}, Lxe/m;-><init>(Lcom/google/zxing/i;)V

    return-object v0

    :cond_4
    new-instance v0, Lxe/l;

    invoke-direct {v0, p1}, Lxe/l;-><init>(Lcom/google/zxing/i;)V

    return-object v0

    :cond_5
    new-instance v0, Lxe/g;

    invoke-direct {v0, p1}, Lxe/g;-><init>(Lcom/google/zxing/i;)V

    return-object v0
.end method
