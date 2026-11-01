.class public final Lxl/f$e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxl/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "e"
.end annotation


# instance fields
.field private final a:[Ljava/io/File;


# direct methods
.method synthetic constructor <init>(Lxl/f;Ljava/lang/String;J[Ljava/io/File;[JLxl/f$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lxl/f$e;->a:[Ljava/io/File;

    return-void
.end method


# virtual methods
.method public a(I)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lxl/f$e;->a:[Ljava/io/File;

    aget-object p1, v0, p1

    return-object p1
.end method
