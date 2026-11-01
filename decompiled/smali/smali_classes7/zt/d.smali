.class final Lzt/d;
.super Landroid/content/ContextWrapper;


# instance fields
.field private final a:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/app/Application;Ljava/io/File;)V
    .locals 1

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stableFilesDir"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lzt/d;->a:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public getApplicationContext()Landroid/content/Context;
    .locals 0

    return-object p0
.end method

.method public getFilesDir()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lzt/d;->a:Ljava/io/File;

    return-object v0
.end method
