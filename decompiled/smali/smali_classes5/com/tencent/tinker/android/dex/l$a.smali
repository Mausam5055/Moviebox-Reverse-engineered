.class Lcom/tencent/tinker/android/dex/l$a;
.super Ljava/lang/Object;

# interfaces
.implements Lgf/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tinker/android/dex/l;->a()Lgf/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:I

.field final synthetic b:Lcom/tencent/tinker/android/dex/l;


# direct methods
.method constructor <init>(Lcom/tencent/tinker/android/dex/l;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tinker/android/dex/l$a;->b:Lcom/tencent/tinker/android/dex/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/tencent/tinker/android/dex/l$a;->a:I

    return-void
.end method


# virtual methods
.method public readByte()B
    .locals 3

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/l$a;->b:Lcom/tencent/tinker/android/dex/l;

    iget-object v0, v0, Lcom/tencent/tinker/android/dex/l;->b:[B

    iget v1, p0, Lcom/tencent/tinker/android/dex/l$a;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/tencent/tinker/android/dex/l$a;->a:I

    aget-byte v0, v0, v1

    return v0
.end method
