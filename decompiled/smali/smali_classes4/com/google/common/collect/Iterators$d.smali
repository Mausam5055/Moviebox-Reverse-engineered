.class final Lcom/google/common/collect/Iterators$d;
.super Lcom/google/common/collect/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Iterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# static fields
.field static final d:Lcom/google/common/collect/s4;


# instance fields
.field private final c:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/common/collect/Iterators$d;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1}, Lcom/google/common/collect/Iterators$d;-><init>([Ljava/lang/Object;I)V

    sput-object v0, Lcom/google/common/collect/Iterators$d;->d:Lcom/google/common/collect/s4;

    return-void
.end method

.method constructor <init>([Ljava/lang/Object;I)V
    .locals 1

    array-length v0, p1

    invoke-direct {p0, v0, p2}, Lcom/google/common/collect/a;-><init>(II)V

    iput-object p1, p0, Lcom/google/common/collect/Iterators$d;->c:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected a(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/Iterators$d;->c:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method
