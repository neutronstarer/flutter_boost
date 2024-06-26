/*
 * The MIT License (MIT)
 *
 * Copyright (c) 2019 Alibaba Group
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */

/**
 *  路由参数配置
 *
 * 用于路由跳转
 */
export default class FlutterBoostRouteOptions {
  // 页面名称
  private readonly pageName: string
  // 参数
  private readonly arguments: Record<string, Object>
  // 请求码
  private readonly requestCode: number
  // 唯一标识符
  private readonly uniqueId: string | null
  // 是否不透明
  private readonly opaque: boolean

  constructor(builder: FlutterBoostRouteOptionsBuilder) {
    this.pageName = builder.pageName;
    this.arguments = builder.arguments;
    this.requestCode = builder.requestCode;
    this.uniqueId = builder.uniqueId;
    this.opaque = builder.opaque;
  }

  public getPageName(): string {
    return this.pageName;
  }

  public getArguments(): Record<string, Object> {
    return this.arguments;
  }

  public getRequestCode(): number {
    return this.requestCode;
  }

  public getUniqueId(): string | null {
    return this.uniqueId;
  }

  public isOpaque(): boolean {
    return this.opaque;
  }
}

export class FlutterBoostRouteOptionsBuilder {
  pageName: string;
  arguments: Record<string, Object>;
  requestCode: number;
  uniqueId: string | null;
  opaque: boolean = true;

  constructor() {
    this.pageName = ''
    this.arguments = {}
    this.requestCode = 0
    this.uniqueId = null
    this.opaque = false
  }

  public setPageName(pageName: string): FlutterBoostRouteOptionsBuilder {
    this.pageName = pageName;
    return this;
  }

  public setArguments(args: Record<string, Object>): FlutterBoostRouteOptionsBuilder {
    this.arguments = args;
    return this;
  }

  public setRequestCode(requestCode: number): FlutterBoostRouteOptionsBuilder {
    this.requestCode = requestCode;
    return this;
  }

  public setUniqueId(uniqueId: string): FlutterBoostRouteOptionsBuilder {
    this.uniqueId = uniqueId;
    return this;
  }

  public setOpaque(opaque: boolean): FlutterBoostRouteOptionsBuilder {
    this.opaque = opaque;
    return this;
  }

  public build(): FlutterBoostRouteOptions {
    return new FlutterBoostRouteOptions(this);
  }
}