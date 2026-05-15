import ArgumentParser
import Foundation

struct Exec: AsyncParsableCommand {
  static var configuration = CommandConfiguration(abstract: "Execute a command in a running VM")

  @Flag(name: [.customShort("i")], help: "Attach host's standard input to a remote command")
  var interactive: Bool = false

  @Flag(name: [.customShort("t")], help: "Allocate a remote pseudo-terminal (PTY)")
  var tty: Bool = false

  @Argument(help: "VM name", completion: .custom(completeLocalMachines))
  var name: String

  @Argument(parsing: .captureForPassthrough, help: "Command to execute")
  var command: [String]

  func run() async throws {
    throw RuntimeError.Generic("\"tart exec\" is not available in this build")
  }
}
