.class Lcom/google/common/collect/EnumMultiset$b;
.super Lcom/google/common/collect/EnumMultiset$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/EnumMultiset;->entryIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/google/common/collect/EnumMultiset;


# direct methods
.method constructor <init>(Lcom/google/common/collect/EnumMultiset;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/EnumMultiset$b;->d:Lcom/google/common/collect/EnumMultiset;

    invoke-direct {p0, p1}, Lcom/google/common/collect/EnumMultiset$c;-><init>(Lcom/google/common/collect/EnumMultiset;)V

    return-void
.end method


# virtual methods
.method bridge synthetic a(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/EnumMultiset$b;->b(I)Lcom/google/common/collect/l3$a;

    move-result-object p1

    return-object p1
.end method

.method b(I)Lcom/google/common/collect/l3$a;
    .locals 1

    new-instance v0, Lcom/google/common/collect/EnumMultiset$b$a;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/EnumMultiset$b$a;-><init>(Lcom/google/common/collect/EnumMultiset$b;I)V

    return-object v0
.end method
