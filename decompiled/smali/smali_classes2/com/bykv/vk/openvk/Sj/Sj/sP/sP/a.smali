.class public abstract Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/a;
.super Ljava/lang/Object;


# static fields
.field static volatile a:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/TKC;

.field public static final b:Z

.field public static volatile c:Z

.field static volatile d:Z

.field static volatile e:Z

.field static volatile f:I

.field public static volatile g:I

.field public static volatile h:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/component/utils/Zq;->EjP()Z

    move-result v0

    sput-boolean v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/a;->b:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/a;->d:Z

    const/4 v0, 0x0

    sput v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/a;->f:I

    const/4 v0, 0x3

    sput v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/a;->g:I

    return-void
.end method

.method public static a()Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/b;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static b()Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/TKC;
    .locals 1

    sget-object v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/a;->a:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/TKC;

    return-object v0
.end method
