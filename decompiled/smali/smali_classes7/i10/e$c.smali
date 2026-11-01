.class final Li10/e$c;
.super Ljava/lang/Object;

# interfaces
.implements Li10/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li10/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljava/lang/Byte;

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    invoke-direct {v0, p1}, Ljava/lang/Byte;-><init>(B)V

    return-object v0
.end method
