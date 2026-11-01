.class public abstract Lcom/cloud/h5update/utils/h;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/h5update/utils/h$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/cloud/h5update/utils/h$a;

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;

.field private static final d:Ljava/lang/String;

.field private static final e:Ljava/lang/String;

.field private static final f:Ljava/lang/String;

.field private static final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/cloud/h5update/utils/h$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cloud/h5update/utils/h$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/cloud/h5update/utils/h;->a:Lcom/cloud/h5update/utils/h$a;

    invoke-static {v0}, Lcom/cloud/h5update/utils/h$a;->d(Lcom/cloud/h5update/utils/h$a;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/cloud/h5update/utils/h;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/cloud/h5update/utils/h;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Android"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/cloud/h5update/utils/h;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/cloud/h5update/utils/h$a;->b(Lcom/cloud/h5update/utils/h$a;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/cloud/h5update/utils/h;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/cloud/h5update/utils/h$a;->c(Lcom/cloud/h5update/utils/h$a;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/cloud/h5update/utils/h;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/cloud/h5update/utils/h$a;->a(Lcom/cloud/h5update/utils/h$a;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cloud/h5update/utils/h;->g:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/cloud/h5update/utils/h;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/cloud/h5update/utils/h;->g:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/cloud/h5update/utils/h;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/cloud/h5update/utils/h;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/cloud/h5update/utils/h;->b:Ljava/lang/String;

    return-object v0
.end method
