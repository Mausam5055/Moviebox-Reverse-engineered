.class public final Landroidx/media3/container/ObuParser$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/container/ObuParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:I

.field public final b:Ljava/nio/ByteBuffer;


# direct methods
.method private constructor <init>(ILjava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/container/ObuParser$c;->a:I

    iput-object p2, p0, Landroidx/media3/container/ObuParser$c;->b:Ljava/nio/ByteBuffer;

    return-void
.end method

.method synthetic constructor <init>(ILjava/nio/ByteBuffer;Landroidx/media3/container/ObuParser$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/media3/container/ObuParser$c;-><init>(ILjava/nio/ByteBuffer;)V

    return-void
.end method
