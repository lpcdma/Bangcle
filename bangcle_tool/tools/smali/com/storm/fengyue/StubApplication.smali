.class public Lcom/storm/fengyue/StubApplication;
.super Landroid/app/Application;
.source "StubApplication.java"


# static fields
.field public static TAG:Ljava/lang/String;

.field public static soName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 16
    const-string v0, "fengyue"

    sput-object v0, Lcom/storm/fengyue/StubApplication;->TAG:Ljava/lang/String;

    .line 17
    const-string v0, "libdexload"

    sput-object v0, Lcom/storm/fengyue/StubApplication;->soName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static copy(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "asset_soname"    # Ljava/lang/String;
    .param p2, "str2"    # Ljava/lang/String;
    .param p3, "str3"    # Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "so_dest":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 48
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_23

    .line 49
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 51
    :cond_23
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 53
    const/4 v2, 0x0

    :try_start_2a
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_6a

    .line 55
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 56
    .local v3, "open":Ljava/io/InputStream;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 57
    .local v4, "fileInputStream":Ljava/io/InputStream;
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-direct {v5, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 58
    .local v5, "bufferedInputStream":Ljava/io/BufferedInputStream;
    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-direct {v6, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 59
    .local v6, "bufferedInputStream2":Ljava/io/BufferedInputStream;
    sget-object v7, Lcom/storm/fengyue/StubApplication;->TAG:Ljava/lang/String;

    const-string v8, "check is same file"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-static {v5, v6}, Lcom/storm/fengyue/StubApplication;->isSameFile(Ljava/io/BufferedInputStream;Ljava/io/BufferedInputStream;)Z

    move-result v7

    if-eqz v7, :cond_5a

    .line 61
    const/4 v7, 0x1

    .line 61
    .local v7, "result":Z
    goto :goto_5b

    .line 63
    .end local v7    # "result":Z
    :cond_5a
    const/4 v7, 0x0

    .line 65
    .restart local v7    # "result":Z
    :goto_5b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 66
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 67
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    .line 68
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V

    .line 69
    if-eqz v7, :cond_6a

    .line 70
    return v7

    .line 73
    .end local v3    # "open":Ljava/io/InputStream;
    .end local v4    # "fileInputStream":Ljava/io/InputStream;
    .end local v5    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .end local v6    # "bufferedInputStream2":Ljava/io/BufferedInputStream;
    .end local v7    # "result":Z
    :cond_6a
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 74
    .local v3, "open2":Ljava/io/InputStream;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 75
    .local v4, "fileOutputStream":Ljava/io/FileOutputStream;
    const/16 v5, 0x1c00

    new-array v5, v5, [B

    .line 77
    .local v5, "bArr":[B
    :goto_7f
    invoke-virtual {v3, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .line 78
    .local v6, "read":I
    if-gtz v6, :cond_a8

    .line 79
    nop

    .line 83
    .end local v6    # "read":I
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 84
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8c
    .catch Ljava/io/FileNotFoundException; {:try_start_2a .. :try_end_8c} :catch_b1
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_8c} :catch_ac

    .line 86
    :try_start_8c
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "chmod 755 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_a4} :catch_a5
    .catch Ljava/io/FileNotFoundException; {:try_start_8c .. :try_end_a4} :catch_b1
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_a4} :catch_ac

    .line 88
    goto :goto_a6

    .line 87
    :catch_a5
    move-exception v2

    .line 89
    :goto_a6
    const/4 v2, 0x1

    return v2

    .line 81
    .restart local v6    # "read":I
    :cond_a8
    :try_start_a8
    invoke-virtual {v4, v5, v2, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_ab
    .catch Ljava/io/FileNotFoundException; {:try_start_a8 .. :try_end_ab} :catch_b1
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_ab} :catch_ac

    .line 82
    .end local v6    # "read":I
    goto :goto_7f

    .line 92
    .end local v3    # "open2":Ljava/io/InputStream;
    .end local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v5    # "bArr":[B
    :catch_ac
    move-exception v3

    .line 93
    .local v3, "e3":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 93
    .end local v3    # "e3":Ljava/io/IOException;
    goto :goto_b6

    .line 90
    :catch_b1
    move-exception v3

    .line 91
    .local v3, "e2":Ljava/io/FileNotFoundException;
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 94
    .end local v3    # "e2":Ljava/io/FileNotFoundException;
    nop

    .line 95
    :goto_b6
    return v2
.end method

.method public static isSameFile(Ljava/io/BufferedInputStream;Ljava/io/BufferedInputStream;)Z
    .registers 9
    .param p0, "bufferedInputStream"    # Ljava/io/BufferedInputStream;
    .param p1, "bufferedInputStream2"    # Ljava/io/BufferedInputStream;

    .line 21
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->available()I

    move-result v1

    .line 22
    .local v1, "available":I
    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->available()I

    move-result v2

    .line 23
    .local v2, "available2":I
    if-eq v1, v2, :cond_c

    .line 24
    return v0

    .line 26
    :cond_c
    new-array v3, v1, [B

    .line 27
    .local v3, "bArr":[B
    new-array v4, v2, [B

    .line 28
    .local v4, "bArr2":[B
    invoke-virtual {p0, v3}, Ljava/io/BufferedInputStream;->read([B)I

    .line 29
    invoke-virtual {p1, v4}, Ljava/io/BufferedInputStream;->read([B)I

    .line 30
    const/4 v2, 0x0

    :goto_17
    if-ge v2, v1, :cond_23

    .line 31
    aget-byte v5, v3, v2

    aget-byte v6, v4, v2
    :try_end_1d
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1d} :catch_2a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1d} :catch_25

    if-eq v5, v6, :cond_20

    .line 32
    return v0

    .line 30
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 35
    :cond_23
    const/4 v0, 0x1

    return v0

    .line 39
    .end local v1    # "available":I
    .end local v2    # "available2":I
    .end local v3    # "bArr":[B
    .end local v4    # "bArr2":[B
    :catch_25
    move-exception v1

    .line 40
    .local v1, "e2":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 41
    return v0

    .line 36
    .end local v1    # "e2":Ljava/io/IOException;
    :catch_2a
    move-exception v1

    .line 37
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 38
    return v0
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .line 99
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 100
    sget-object v0, Lcom/storm/fengyue/StubApplication;->TAG:Ljava/lang/String;

    const-string v1, "StubApplication.attachBaseContext"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/.jiagu"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "str":Ljava/lang/String;
    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 103
    .local v1, "abi":Ljava/lang/String;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_35

    .line 104
    sget-object v2, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 105
    .local v2, "CPU_ABIS":[Ljava/lang/String;
    array-length v3, v2

    if-lez v3, :cond_34

    .line 106
    const/4 v3, 0x0

    aget-object v1, v2, v3

    .line 108
    .end local v2    # "CPU_ABIS":[Ljava/lang/String;
    :cond_34
    goto :goto_37

    .line 109
    :cond_35
    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 111
    :goto_37
    sget-object v2, Lcom/storm/fengyue/StubApplication;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Build.CPU_ABI:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const-string v2, "armeabi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a2

    .line 113
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/storm/fengyue/StubApplication;->soName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_arm.so"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/storm/fengyue/StubApplication;->soName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".so"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2, v0, v3}, Lcom/storm/fengyue/StubApplication;->copy(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/storm/fengyue/StubApplication;->soName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".so"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 115
    invoke-static {p1}, Lcom/storm/fengyue/Native;->attachBaseContext(Landroid/content/Context;)V

    goto/16 :goto_160

    .line 116
    :cond_a2
    const-string v2, "arm64"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f6

    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/storm/fengyue/StubApplication;->soName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_a64.so"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/storm/fengyue/StubApplication;->soName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".so"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2, v0, v3}, Lcom/storm/fengyue/StubApplication;->copy(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/storm/fengyue/StubApplication;->soName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".so"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 119
    invoke-static {p1}, Lcom/storm/fengyue/Native;->attachBaseContext(Landroid/content/Context;)V

    goto :goto_160

    .line 120
    :cond_f6
    const-string v2, "x86"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14a

    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/storm/fengyue/StubApplication;->soName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_x86.so"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/storm/fengyue/StubApplication;->soName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".so"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2, v0, v3}, Lcom/storm/fengyue/StubApplication;->copy(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/storm/fengyue/StubApplication;->soName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".so"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 123
    invoke-static {p1}, Lcom/storm/fengyue/Native;->attachBaseContext(Landroid/content/Context;)V

    goto :goto_160

    .line 125
    :cond_14a
    sget-object v2, Lcom/storm/fengyue/StubApplication;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bangcle is not supported abi:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :goto_160
    return-void
.end method

.method public onCreate()V
    .registers 3

    .line 130
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 131
    sget-object v0, Lcom/storm/fengyue/StubApplication;->TAG:Ljava/lang/String;

    const-string v1, "StubApplication.onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-static {p0}, Lcom/storm/fengyue/Native;->onCreate(Landroid/content/Context;)V

    .line 133
    return-void
.end method
