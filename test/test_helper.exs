ExUnit.start()

Mox.defmock(Calcbox.CalcMock, for: Calcbox.Calculator)

Application.put_env(:calcbox, :calculator, Calcbox.CalcMock)