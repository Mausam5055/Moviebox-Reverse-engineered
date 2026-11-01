.class Lcom/google/common/base/Converter$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/base/Converter;->convertAll(Ljava/lang/Iterable;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Iterable;

.field final synthetic b:Lcom/google/common/base/Converter;


# direct methods
.method constructor <init>(Lcom/google/common/base/Converter;Ljava/lang/Iterable;)V
    .locals 0

    iput-object p2, p0, Lcom/google/common/base/Converter$a;->a:Ljava/lang/Iterable;

    iput-object p1, p0, Lcom/google/common/base/Converter$a;->b:Lcom/google/common/base/Converter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/google/common/base/Converter$a$a;

    invoke-direct {v0, p0}, Lcom/google/common/base/Converter$a$a;-><init>(Lcom/google/common/base/Converter$a;)V

    return-object v0
.end method
