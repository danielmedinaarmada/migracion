class Poliza < ApplicationRecord
  validates :poliza_a_migrar, length: { is: 7, wrong_length: ": la póliza esta conformada por 7 dígitos numéricos." }
  validates :poliza_a_migrar, uniqueness: { message: ": póliza registrada previamente."}
  validates :poliza_a_migrar, presence: { message: ": la póliza no puede estar en blanco."}
  validates :poliza_a_migrar, format: { with: /\A3[\d{6}]+\z/,
    message: ": la póliza debe comenzar por 3 y todos los dígitos son numéricos." }
end
